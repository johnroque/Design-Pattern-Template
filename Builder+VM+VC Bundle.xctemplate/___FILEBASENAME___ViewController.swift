//  ___FILEHEADER___

import UIKit
import MBProgressHUD
import RxCocoa
import RxSwift

protocol ___FILEBASENAME___Delegate: AnyObject {
    func dismiss(_ vc: ___FILEBASENAME___)
}

class ___FILEBASENAME___: UIViewController, CreatedFromNib, DisplaysProgress {
    
    weak var delegate: ___FILEBASENAME___Delegate?
    
    // MARK: - Outlets
    
    // MARK: - DisplaysProgress
    
    var viewForHUD: UIView {
        return self.view
    }
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initViewModel()
    }
    
    private func initViews() {
        
    }
    
    // MARK: - ViewModel
    
    var viewModel: ___VARIABLE_productName___ViewModel!
    
    private func initViewModel() {
        bindInputs()
        bindOutputs()
    }
    
    private func bindInputs() {
        
    }
    
    private func bindOutputs() {
        
        viewModel
            .outputs
            .isProcessing
            .asDriver()
            .drive(onNext: { [unowned self] (isProcessing) in
                if isProcessing {
                    self.showProgress()
                } else {
                    self.hideProgress()
                }
            }).disposed(by: disposeBag)
        
        viewModel
            .outputs
            .errorMessage
            .asDriver()
            .filter { !$0.isEmpty }
            .drive(onNext: { [unowned self] (errorMessage) in
                self.showAlert(type: .error, title: nil, message: errorMessage)
            }).disposed(by: disposeBag)
        
    }
    
    // MARK: - Private
    
    private var disposeBag = DisposeBag()
    
    // MARK: - Deinit
    
    deinit {
        print("--Deallocating \(self)")
    }
    
}
