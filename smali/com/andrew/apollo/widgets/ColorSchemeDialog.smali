.class public Lcom/andrew/apollo/widgets/ColorSchemeDialog;
.super Landroid/app/AlertDialog;
.source "ColorSchemeDialog.java"

# interfaces
.implements Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;


# instance fields
.field private mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

.field private final mCurrentColor:I

.field private mHexValue:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mListener:Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Landroid/widget/Button;

.field private mOldColor:Landroid/widget/Button;

.field private final mPresetListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mListener:Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;

    .line 184
    new-instance v0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;-><init>(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)V

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mPresetListener:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 64
    invoke-static {p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->getDefaultThemeColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mCurrentColor:I

    .line 65
    iget v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mCurrentColor:I

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUp(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mNewColor:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mListener:Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;

    return-object v0
.end method

.method private getColor(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private padLeft(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 3
    .parameter "string"
    .parameter "padChar"
    .parameter "size"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p3, :cond_0

    .line 97
    .end local p1
    :goto_0
    return-object p1

    .line 92
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_1

    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setUp(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0d004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/ColorPickerView;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

    .line 110
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mOldColor:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mOldColor:Landroid/widget/Button;

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mPresetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mNewColor:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0d0050

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 114
    const v0, 0x7f0d0051

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 115
    const v0, 0x7f0d0052

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 116
    const v0, 0x7f0d0053

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 117
    const v0, 0x7f0d0056

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 118
    const v0, 0x7f0d0057

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 119
    const v0, 0x7f0d0058

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 120
    const v0, 0x7f0d0059

    invoke-direct {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUpPresets(I)V

    .line 121
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;

    .line 122
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;

    new-instance v1, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;-><init>(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/widgets/ColorPickerView;->setOnColorChangedListener(Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;)V

    .line 149
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mOldColor:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 150
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(IZ)V

    .line 152
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setTitle(I)V

    .line 153
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method private setUpPresets(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 176
    .local v0, preset:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mPresetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

    invoke-virtual {v0}, Lcom/andrew/apollo/widgets/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->removeHardwareAccelerationSupport(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onColorChanged(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->padLeft(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mNewColor:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 86
    return-void
.end method
