param (
	[ValidateSet('cpp', 'go', 'java', 'python', 'rust', 'swift')]
	$Language
)

$image = "theiaide/$($Language ? "theia-${Language}:next" : 'theia')"

docker run -it --init -p 3000:3000 --user root --mount src=$PSScriptRoot,dst=/home/project,type=bind,consistency=cached $image
