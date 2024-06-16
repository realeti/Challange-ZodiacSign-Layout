//
//  ViewController.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 08.06.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI

    private lazy var containerView: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 15
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Main Stack View
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.layer.cornerRadius = 15
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    // MARK: - Header Stack View
    
    private lazy var headerStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private let heartButton = UIButton(image: .heart)
    private let closeButton = UIButton(image: .close)
    private let nameLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato400, size: 24)
    )
    
    // MARK: - Fullname Stack View
    
    private let fullNameStackView = UIStackView(
        axis: .vertical,
        spacing: 14
    )
    
    // MARK: - Nami Image
    
    private let namiImageView = UIImageView(image: .nami)
    
    private lazy var fullNameView: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(resource: .lightRose).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let fullNameLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato400, size: 18),
        alignment: .center,
        numberOfLines: 2
    )
    
    // MARK: - Zodiac Main Stack View
    
    private let zodiacMainStackView = UIStackView(
        axis: .horizontal,
        alignment: .center
    )
    
    // MARK: - Zodiac Left Stack View
    
    private let zodiacLeftInfoStackView = UIStackView(
        axis: .vertical,
        spacing: 22,
        distribution: .equalSpacing
    )
    
    // MARK: - Zodiac Sign Stack View
    
    private let zodiacSignStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacSignLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let zodiacSignNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Zodiac Element Stack View
    
    private let zodiacElementStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacElementLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let zodiacElementNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Zodiac Stone Stack View
    
    private let zodiacStoneStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacStoneLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let zodiacStoneNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Person Image
    
    private let personImageView = UIImageView(image: .person)
    
    // MARK: - Zodiac Right Stack View
    
    private let zodiacRightInfoStackView = UIStackView(
        axis: .vertical,
        spacing: 22,
        distribution: .equalSpacing
    )
    
    // MARK: - Zodiac Ascendant Stack View
    
    private let zodiacAscendantStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacAscendantLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14),
        alignment: .right
    )
    
    private let zodiacAscendantNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14),
        alignment: .right
    )
    
    // MARK: - Zodiac Color Stack View
    
    private let zodiacColorStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacColorLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14),
        alignment: .right
    )
    
    private let zodiacColorNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14),
        alignment: .right
    )
    
    // MARK: - Zodiac Abode Stack View
    
    private let zodiacAbodeStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacAbodeLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14),
        alignment: .right
    )
    
    private let zodiacAbodeNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14),
        alignment: .right
    )
    
    // MARK: - Character Traits Stack View
    
    private lazy var characterTraitsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var characterTraitsLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-SemiBold", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var traitsElementsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 28
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var luckElementsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var luckLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-Medium", size: 14)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var emptyLuckView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var luckProgressView: UIProgressView = {
        let progressView = UIProgressView()
        
        progressView.progressTintColor = UIColor(resource: .darkRose)
        progressView.trackTintColor = UIColor(resource: .darkRose).withAlphaComponent(0.3)
        progressView.layer.cornerRadius = 12
        progressView.translatesAutoresizingMaskIntoConstraints = false
        
        return progressView
    }()
    
    private lazy var emptyLuckProgressView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var luckProgressLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .fadingRose)
        label.font = UIFont(name: "Lato-Regular", size: 13)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var kindnessElementsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var kindnessLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-Medium", size: 14)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var emptyKindnessView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var kindnessProgressView: UIProgressView = {
        let progressView = UIProgressView()
        
        progressView.progressTintColor = UIColor(resource: .darkRose)
        progressView.trackTintColor = UIColor(resource: .darkRose).withAlphaComponent(0.3)
        progressView.layer.cornerRadius = 12
        progressView.translatesAutoresizingMaskIntoConstraints = false
        
        return progressView
    }()
    
    private lazy var emptyKindnessProgressView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var kindnessProgressLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .fadingRose)
        label.font = UIFont(name: "Lato-Regular", size: 13)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var mindElementsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var mindLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-Medium", size: 14)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var emptyMindView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var mindProgressView: UIProgressView = {
        let progressView = UIProgressView()
        
        progressView.progressTintColor = UIColor(resource: .darkRose)
        progressView.trackTintColor = UIColor(resource: .darkRose).withAlphaComponent(0.3)
        progressView.layer.cornerRadius = 12
        progressView.translatesAutoresizingMaskIntoConstraints = false
        
        return progressView
    }()
    
    private lazy var emptyMindProgressView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var mindProgressLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .fadingRose)
        label.font = UIFont(name: "Lato-Regular", size: 13)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var zodiacHistoryStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 36
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var descriptionStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-SemiBold", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var descriptionTextLabel: UILabel = { // set as UITextField
        let label = UILabel()
        
        label.textColor = UIColor(resource: .jet)
        label.font = UIFont(name: "Lato-Regular", size: 14)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var meaningOfNameStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var meaningOfNameLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-SemiBold", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var meaningOfNameTextLabel: UILabel = { // set as UITextField
        let label = UILabel()
        
        label.textColor = UIColor(resource: .jet)
        label.font = UIFont(name: "Lato-Regular", size: 14)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var astrologyStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var astrologyLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(resource: .dustyRose)
        label.font = UIFont(name: "Lato-SemiBold", size: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var astrologyTextLabel: UILabel = { // set as UITextField
        let label = UILabel()
        
        label.textColor = UIColor(resource: .jet)
        label.font = UIFont(name: "Lato-Regular", size: 14)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
        setupConstraints()
        configureUI()
    }
    
    // MARK: - Private Properties
    
    var person: Person?
    
    // MARK: - Setup Views
    
    private func setupUI() {
        view.addSubview(containerView)
        
        containerView.addSubview(headerStackView)
        headerStackView.addArrangedSubview(heartButton)
        headerStackView.addArrangedSubview(nameLabel)
        headerStackView.addArrangedSubview(closeButton)
        
        containerView.addSubview(fullNameStackView)
        fullNameStackView.addArrangedSubview(namiImageView)
        fullNameStackView.addArrangedSubview(fullNameView)
        fullNameView.addSubview(fullNameLabel)
        
        containerView.addSubview(zodiacMainStackView)
        zodiacMainStackView.addArrangedSubview(zodiacLeftInfoStackView)
        
        zodiacLeftInfoStackView.addArrangedSubview(zodiacSignStackView)
        zodiacSignStackView.addArrangedSubview(zodiacSignLabel)
        zodiacSignStackView.addArrangedSubview(zodiacSignNameLabel)
        
        zodiacLeftInfoStackView.addArrangedSubview(zodiacElementStackView)
        zodiacElementStackView.addArrangedSubview(zodiacElementLabel)
        zodiacElementStackView.addArrangedSubview(zodiacElementNameLabel)
        
        zodiacLeftInfoStackView.addArrangedSubview(zodiacStoneStackView)
        zodiacStoneStackView.addArrangedSubview(zodiacStoneLabel)
        zodiacStoneStackView.addArrangedSubview(zodiacStoneNameLabel)
        
        zodiacMainStackView.addArrangedSubview(personImageView)
        zodiacMainStackView.addArrangedSubview(zodiacRightInfoStackView)
        
        zodiacRightInfoStackView.addArrangedSubview(zodiacAscendantStackView)
        zodiacAscendantStackView.addArrangedSubview(zodiacAscendantLabel)
        zodiacAscendantStackView.addArrangedSubview(zodiacAscendantNameLabel)
        
        zodiacRightInfoStackView.addArrangedSubview(zodiacColorStackView)
        zodiacColorStackView.addArrangedSubview(zodiacColorLabel)
        zodiacColorStackView.addArrangedSubview(zodiacColorNameLabel)
        
        zodiacRightInfoStackView.addArrangedSubview(zodiacAbodeStackView)
        zodiacAbodeStackView.addArrangedSubview(zodiacAbodeLabel)
        zodiacAbodeStackView.addArrangedSubview(zodiacAbodeNameLabel)
        
        containerView.addSubview(characterTraitsStackView)
        characterTraitsStackView.addArrangedSubview(characterTraitsLabel)
        characterTraitsStackView.addArrangedSubview(traitsElementsStackView)
        
        traitsElementsStackView.addArrangedSubview(luckElementsStackView)
        luckElementsStackView.addArrangedSubview(luckLabel)
        luckElementsStackView.addArrangedSubview(emptyLuckView)
        luckElementsStackView.addArrangedSubview(luckProgressView)
        luckElementsStackView.addArrangedSubview(emptyLuckProgressView)
        luckElementsStackView.addArrangedSubview(luckProgressLabel)
        
        traitsElementsStackView.addArrangedSubview(kindnessElementsStackView)
        kindnessElementsStackView.addArrangedSubview(kindnessLabel)
        kindnessElementsStackView.addArrangedSubview(emptyKindnessView)
        kindnessElementsStackView.addArrangedSubview(kindnessProgressView)
        kindnessElementsStackView.addArrangedSubview(emptyKindnessProgressView)
        kindnessElementsStackView.addArrangedSubview(kindnessProgressLabel)
        
        traitsElementsStackView.addArrangedSubview(mindElementsStackView)
        mindElementsStackView.addArrangedSubview(mindLabel)
        mindElementsStackView.addArrangedSubview(emptyMindView)
        mindElementsStackView.addArrangedSubview(mindProgressView)
        mindElementsStackView.addArrangedSubview(emptyMindProgressView)
        mindElementsStackView.addArrangedSubview(mindProgressLabel)
        
        containerView.addSubview(zodiacHistoryStackView)
        
        zodiacHistoryStackView.addArrangedSubview(descriptionStackView)
        descriptionStackView.addArrangedSubview(descriptionLabel)
        descriptionStackView.addArrangedSubview(descriptionTextLabel)
        
        zodiacHistoryStackView.addArrangedSubview(astrologyStackView)
        astrologyStackView.addArrangedSubview(astrologyLabel)
        astrologyStackView.addArrangedSubview(astrologyTextLabel)
        
        zodiacHistoryStackView.addArrangedSubview(meaningOfNameStackView)
        meaningOfNameStackView.addArrangedSubview(meaningOfNameLabel)
        meaningOfNameStackView.addArrangedSubview(meaningOfNameTextLabel)
        
        let zodiac = Zodiac(sign: .aries)
        person = Person(name: "Владислав", patronymic: "", surname: "", zodiac: zodiac)
    }
    
    private func configureUI() {
        configureContainerView()
        configureNameLabel()
        configureFullNameLabel()
        
        configureZodiacSignLabels()
        configureZodiacElementLabels()
        configureZodiacStoneLabels()
        configureZodiacAscendantLabels()
        configureZodiacColorLabels()
        configureZodiacAbodeLabels()
        
        configureCharacterTraitsLabel()
        configureLuckLabel()
        configureKindnessLabel()
        configureMindLabel()
        
        configureLuckProgress()
        configureKindnessProgress()
        configureMindProgress()
        
        configureDescriptionLabel()
        configureDescriptionTextLabel()
        
        configureMeaningOfNameLabel()
        configureMeaningOfNameTextLabel()
        
        configureAstrologyLabel()
        configureAstrologyTextLabel()
    }
    
    private func configureContainerView() {
        containerView.makeShadow(color: UIColor(resource: .peach))
    }
    
    private func configureNameLabel() {
        guard let person else { return }
        
        nameLabel.text = person.name
    }
    
    private func configureFullNameLabel() {
        guard let person else { return }
        
        let patronymic = person.patronymic ?? ""
        fullNameLabel.text = person.surname + " " + person.name + " " + patronymic
    }
    
    private func configureZodiacSignLabels() {
        guard let person else { return }
        
        zodiacSignLabel.text = "Знак зодиака"
        zodiacSignNameLabel.text = person.zodiac.zodiacName
    }
    
    private func configureZodiacElementLabels() {
        guard let person else { return }
        
        zodiacElementLabel.text = "Стихия"
        zodiacElementNameLabel.text = person.zodiac.element
    }
    
    private func configureZodiacStoneLabels() {
        guard let person else { return }
        
        zodiacStoneLabel.text = "Камень"
        zodiacStoneNameLabel.text = person.zodiac.stone
    }
    
    private func configureZodiacAscendantLabels() {
        guard let person else { return }
        
        zodiacAscendantLabel.text = "Асцендент"
        zodiacAscendantNameLabel.text = person.zodiac.ascendant
    }
    
    private func configureZodiacColorLabels() {
        guard let person else { return }
        
        zodiacColorLabel.text = "Цвет"
        zodiacColorNameLabel.text = person.zodiac.color
    }
    
    private func configureZodiacAbodeLabels() {
        guard let person else { return }
        
        zodiacAbodeLabel.text = "Обитель"
        zodiacAbodeNameLabel.text = person.zodiac.abode
    }
    
    private func configureCharacterTraitsLabel() {
        characterTraitsLabel.text = "Черты характера"
    }
    
    private func configureLuckLabel() {
        luckLabel.text = "Удача"
    }
    
    private func configureKindnessLabel() {
        kindnessLabel.text = "Доброта"
    }
    
    private func configureMindLabel() {
        mindLabel.text = "Ум"
    }
    
    private func configureLuckProgress() {
        guard let person else { return }
        
        let maxValue: Float = 10.0
        let progressValue = Float(person.zodiac.luck)
        
        luckProgressView.progress = progressValue / maxValue
        
        let roundedMaxValue = String(format: "%.0f", maxValue)
        let roundedProgressValue = String(format: "%.0f", progressValue)
        luckProgressLabel.text = "\(roundedProgressValue) / \(roundedMaxValue)"
    }
    
    private func configureKindnessProgress() {
        guard let person else { return }
        
        let maxValue: Float = 10.0
        let progressValue = Float(person.zodiac.kindness)
        
        kindnessProgressView.progress = progressValue / maxValue
        
        let roundedMaxValue = String(format: "%.0f", maxValue)
        let roundedProgressValue = String(format: "%.0f", progressValue)
        kindnessProgressLabel.text = "\(roundedProgressValue) / \(roundedMaxValue)"
    }
    
    private func configureMindProgress() {
        guard let person else { return }
        
        let maxValue: Float = 10.0
        let progressValue = Float(person.zodiac.mind)
        
        mindProgressView.progress = progressValue / maxValue
        
        let roundedMaxValue = String(format: "%.0f", maxValue)
        let roundedProgressValue = String(format: "%.0f", progressValue)
        mindProgressLabel.text = "\(roundedProgressValue) / \(roundedMaxValue)"
    }
    
    private func configureDescriptionLabel() {
        descriptionLabel.text = "Описание"
    }
    
    private func configureDescriptionTextLabel() {
        descriptionTextLabel.text = "Coming soon..."
    }
    
    private func configureAstrologyLabel() {
        astrologyLabel.text = "Астрология"
    }
    
    private func configureAstrologyTextLabel() {
        astrologyTextLabel.text = "Coming soon..."
    }
    
    private func configureMeaningOfNameLabel() {
        meaningOfNameLabel.text = "Значение имени"
    }
    
    private func configureMeaningOfNameTextLabel() {
        meaningOfNameTextLabel.text = "Coming soon..."
    }
}

extension ViewController {
    
    // MARK: - Setup Constraints
    
    private func setupConstraints() {
        setupContrainerView()
        setupHeaderStackViewConstraints()
        setupHeartButtonConstraints()
        setupCloseButtonConstraints()
        setupFullNameStackViewConstraints()
        setupNamiImageViewConstraints()
        setupFullNameLabelConstraints()
        setupZodiacInfoStackViewConstraints()
        setupPersonImageViewConstraints()
        setupCharacterTraitsStackViewConstraints()
        setupEmptyLuckViewConstraints()
        setupLuckProgressViewConstraints()
        setupEmptyLuckProgressViewConstraints()
        setupEmptyKindnessViewConstraints()
        setupKindnessProgressViewConstraints()
        setupEmptyKindnessProgressViewConstraints()
        setupEmptyMindViewConstraints()
        setupMindProgressViewConstraints()
        setupEmptyMindProgressViewConstraints()
        setupZodiacHistoryStackViewConstraints()
    }
    
    private func setupContrainerView() {
        containerView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    private func setupHeaderStackViewConstraints() {
        headerStackView.snp.makeConstraints { make in
            make.top.equalTo(containerView).inset(20)
            make.leading.trailing.equalTo(containerView).inset(20)
        }
    }
    
    private func setupHeartButtonConstraints() {
        heartButton.snp.makeConstraints { make in
            make.width.height.equalTo(25).priority(.low)
        }
    }
    
    private func setupCloseButtonConstraints() {
        closeButton.snp.makeConstraints { make in
            make.width.height.equalTo(20).priority(.low)
        }
    }
    
    private func setupFullNameStackViewConstraints() {
        fullNameStackView.snp.makeConstraints { make in
            make.top.equalTo(headerStackView.snp.bottom).offset(7)
            make.leading.trailing.equalTo(containerView).inset(30)
        }
    }
    
    private func setupNamiImageViewConstraints() {
        namiImageView.snp.makeConstraints { make in
            make.width.equalTo(86).priority(.low)
            make.height.equalTo(6.5)
        }
    }
    
    private func setupFullNameLabelConstraints() {
        fullNameLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(fullNameView).inset(10)
            make.top.bottom.equalTo(fullNameView).inset(10)
        }
    }
    
    private func setupZodiacInfoStackViewConstraints() {
        zodiacMainStackView.snp.makeConstraints { make in
            make.top.equalTo(fullNameView.snp.bottom).offset(37)
            make.leading.trailing.equalTo(containerView).inset(28)
        }
    }
    
    private func setupPersonImageViewConstraints() {
        personImageView.snp.makeConstraints { make in
            make.width.equalTo(145).priority(.low)
            make.height.equalTo(131)
        }
    }
    
    private func setupCharacterTraitsStackViewConstraints() {
        characterTraitsStackView.snp.makeConstraints { make in
            make.top.equalTo(zodiacMainStackView.snp.bottom).offset(48)
            make.leading.trailing.equalTo(containerView).inset(22)
        }
    }
    
    private func setupEmptyLuckViewConstraints() {
        emptyLuckView.snp.makeConstraints { make in
            make.height.equalTo(8)
        }
    }
    
    private func setupLuckProgressViewConstraints() {
        luckProgressView.snp.makeConstraints { make in
            make.width.equalTo(80).priority(.low)
            make.height.equalTo(5)
        }
    }
    
    private func setupEmptyLuckProgressViewConstraints() {
        emptyLuckProgressView.snp.makeConstraints { make in
            make.height.equalTo(4)
        }
    }
    
    private func setupEmptyKindnessViewConstraints() {
        emptyKindnessView.snp.makeConstraints { make in
            make.height.equalTo(8)
        }
    }
    
    private func setupKindnessProgressViewConstraints() {
        kindnessProgressView.snp.makeConstraints { make in
            make.width.equalTo(80).priority(.low)
            make.height.equalTo(5)
        }
    }
    
    private func setupEmptyKindnessProgressViewConstraints() {
        emptyKindnessProgressView.snp.makeConstraints { make in
            make.height.equalTo(4)
        }
    }
    
    private func setupEmptyMindViewConstraints() {
        emptyMindView.snp.makeConstraints { make in
            make.height.equalTo(8)
        }
    }
    
    private func setupMindProgressViewConstraints() {
        mindProgressView.snp.makeConstraints { make in
            make.width.equalTo(80).priority(.low)
            make.height.equalTo(5)
        }
    }
    
    private func setupEmptyMindProgressViewConstraints() {
        emptyMindProgressView.snp.makeConstraints { make in
            make.height.equalTo(4)
        }
    }
    
    private func setupZodiacHistoryStackViewConstraints() {
        descriptionStackView.snp.makeConstraints { make in
            make.top.equalTo(characterTraitsStackView.snp.bottom).offset(36)
            make.leading.trailing.equalTo(containerView).inset(25)
        }
    }
}
