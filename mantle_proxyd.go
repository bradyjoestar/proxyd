package proxyd

import "errors"

func StartMantle(config *Config) (*Server, func(), error) {
	if len(config.Backends) == 0 {
		return nil, nil, errors.New("must define at least one backend")
	}
	return nil, nil, nil
}
