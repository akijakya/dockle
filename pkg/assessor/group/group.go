package group

import (
	"bufio"
	"bytes"
	"fmt"
	"strings"

	"github.com/goodwithtech/docker-guard/pkg/log"

	"github.com/goodwithtech/docker-guard/pkg/types"

	"github.com/knqyf263/fanal/extractor"
)

type GroupAssessor struct{}

func (a GroupAssessor) Assess(fileMap extractor.FileMap) ([]*types.Assessment, error) {
	log.Logger.Debug("Start scan : /etc/group")

	var existFile bool
	assesses := []*types.Assessment{}
	for _, filename := range a.RequiredFiles() {
		file, ok := fileMap[filename]
		if !ok {
			continue
		}
		existFile = true
		scanner := bufio.NewScanner(bytes.NewBuffer(file))
		gidMap := map[string]struct{}{}

		for scanner.Scan() {
			line := scanner.Text()
			data := strings.Split(line, ":")
			gname := data[0]
			gid := data[2]

			if _, ok := gidMap[gid]; ok {
				assesses = append(
					assesses,
					&types.Assessment{
						Type:     types.AvoidDuplicateGroup,
						Filename: filename,
						Desc:     fmt.Sprintf("duplicate GroupID %s : username %s", gid, gname),
					})
			}
			gidMap[gid] = struct{}{}
		}
	}
	if !existFile {
		assesses = []*types.Assessment{{Type: types.AvoidDuplicateGroup, Level: types.SkipLevel}}
	}

	return assesses, nil
}

func (a GroupAssessor) RequiredFiles() []string {
	return []string{"etc/group"}
}
