# Changelogs

- 05-05-2019:
	- Removed 'MVS-C' and 'Service' templates.
	- Finalized template for Builder, ViewModel and ViewController. Renamed the bundle into 'Builder+VM+VC Bundle'
	- Added CoreProtocols which contains protocols used by the templates.

- 07-03-2019:
	- Updated formatting of ViewModel Template

# How to Install

- Open your Terminal of choice
- cd to "/Users/[whoami]/Library/Developer/Xcode/Templates"
- Clone this repo
- Restart your Xcode

# Contents / Available Templates

- Coordinator
- Service
- MVVM-C Bundle: contains the ff:
    - Builder
    - ViewController
    - ViewModel
- UIView: good for custom views (with a nib, because Xcode doesn't support it)

(for deprecation)
- MVS-C
    - Builder
    - ViewController

# TODO

~~- Add needed protocols (i.e. CreatedFromNib) used by the template files.~~
- Add more stuff to CoreProtocols, such as:
	- CoordinatorType
	- RepositoryType
	- NsDecimalConvertible
	- CustomCell
- Rename datasource to adapter
- Change modalSource to parentNavigation
