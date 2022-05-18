.class public Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
.super Ljava/lang/Object;
.source "NubiaCenterAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcn/nubia/commonui/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 395
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 396
    iput p2, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->mTheme:I

    .line 397
    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .locals 4

    .prologue
    .line 978
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 979
    .local v0, "dialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-static {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->access$000(Lcn/nubia/commonui/app/NubiaCenterAlertDialog;)Lcn/nubia/commonui/app/NubiaCenterAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 980
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCancelable(Z)V

    .line 981
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 982
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 984
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 985
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 986
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 989
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 666
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 667
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 668
    return-object p0
.end method

.method public setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 589
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    .line 590
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 686
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 688
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 443
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 444
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 476
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 485
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 486
    return-object p0
.end method

.method public setIconAttribute(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 499
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 500
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 501
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 502
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 953
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 954
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 638
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 639
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 640
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 650
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 651
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 652
    return-object p0
.end method

.method public setMaxHeightRatio(F)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 966
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMaxHeightRatio:F

    .line 967
    return-object p0
.end method

.method public setMessage(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 454
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 464
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 711
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 712
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 713
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 714
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 715
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 765
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 766
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 767
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 770
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 737
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 738
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 739
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 740
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 741
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 539
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 540
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 541
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 552
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 554
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 565
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 566
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 567
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 578
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 579
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 580
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 608
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 617
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 618
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 876
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 877
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 627
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 628
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 513
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 515
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 526
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 527
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 528
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 961
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 962
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 790
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 791
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 792
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 793
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 794
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 815
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 816
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 817
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 818
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 820
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 860
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 861
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 862
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 863
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 864
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 838
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 839
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 840
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 841
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 842
    return-object p0
.end method

.method public setTitle(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 418
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 428
    return-object p0
.end method

.method public setView(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 890
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 891
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 892
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 905
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 906
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 907
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 934
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 935
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 936
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 937
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 938
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 939
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 940
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p5, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 941
    return-object p0
.end method

.method public show()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .locals 1

    .prologue
    .line 997
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v0

    .line 998
    .local v0, "dialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 999
    return-object v0
.end method
