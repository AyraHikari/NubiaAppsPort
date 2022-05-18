.class public Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;
.super Landroid/widget/LinearLayout;
.source "NotePadFormatPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;,
        Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotePadFormatPopupWindo"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstImage:Landroid/widget/ImageView;

.field private mFirstTextView:Landroid/widget/TextView;

.field private mFourthImage:Landroid/widget/ImageView;

.field private mFourthTextView:Landroid/widget/TextView;

.field private mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

.field private mRootView:Landroid/view/View;

.field private mSecondImage:Landroid/widget/ImageView;

.field private mSecondTextView:Landroid/widget/TextView;

.field private mThirdImage:Landroid/widget/ImageView;

.field private mThirdTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->initView()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->initView()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->initView()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    .line 62
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->initView()V

    .line 65
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f009b

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFirstImage:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f009e

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mSecondImage:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00a1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdImage:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00a4

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFourthImage:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f009c

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFirstTextView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f009f

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mSecondTextView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00a2

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdTextView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00a5

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFourthTextView:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v0, "NotePadFormatPopupWindo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: Country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0
.end method

.method private setSelectedFormatBackground(Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V
    .locals 3
    .param p1, "formatButtonCategory"    # Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    .prologue
    const v2, 0x7f0d0065

    .line 182
    sget-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$1;->$SwitchMap$cn$nubia$notepad$popupwindow$NotePadFormatPopupWindow$FormatButtonCategory:[I

    invoke-virtual {p1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFirstTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFirstImage:Landroid/widget/ImageView;

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mSecondTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mSecondImage:Landroid/widget/ImageView;

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdImage:Landroid/widget/ImageView;

    const v1, 0x7f0201ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFourthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFourthImage:Landroid/widget/ImageView;

    const v1, 0x7f0201df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUnSelectedFormatBackground(Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V
    .locals 3
    .param p1, "formatButtonCategory"    # Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    .prologue
    const v2, 0x7f0d0009

    .line 226
    sget-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$1;->$SwitchMap$cn$nubia$notepad$popupwindow$NotePadFormatPopupWindow$FormatButtonCategory:[I

    invoke-virtual {p1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFirstTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFirstImage:Landroid/widget/ImageView;

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mSecondTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mSecondImage:Landroid/widget/ImageView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mThirdImage:Landroid/widget/ImageView;

    const v1, 0x7f0201ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFourthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mFourthImage:Landroid/widget/ImageView;

    const v1, 0x7f0201de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    invoke-interface {v0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;->onFirstFormatOnClick()V

    goto :goto_0

    .line 108
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    invoke-interface {v0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;->onSecondFormatOnClick()V

    goto :goto_0

    .line 113
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    invoke-interface {v0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;->onThirdFormatOnClick()V

    goto :goto_0

    .line 118
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    invoke-interface {v0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;->onFourthFormatOnClick()V

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x7f0f009a -> :sswitch_0
        0x7f0f009d -> :sswitch_1
        0x7f0f00a0 -> :sswitch_2
        0x7f0f00a3 -> :sswitch_3
    .end sparse-switch
.end method

.method public setOnFormatOnClickListener(Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->mListener:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;

    .line 128
    return-void
.end method

.method public varargs setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V
    .locals 2
    .param p1, "formatButtonCategorys"    # [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 179
    :cond_0
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 177
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormatBackground(Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs setUnSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V
    .locals 2
    .param p1, "formatButtonCategorys"    # [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    .prologue
    .line 218
    if-nez p1, :cond_1

    .line 223
    :cond_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 221
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setUnSelectedFormatBackground(Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
