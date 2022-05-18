.class public Lcn/nubia/commonui/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/app/AlertDialog;
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
    .line 393
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 394
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 409
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 410
    iput p2, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->mTheme:I

    .line 411
    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/commonui/app/AlertDialog;
    .locals 4

    .prologue
    .line 992
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 993
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertDialog;->access$000(Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 994
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 995
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 996
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 998
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 999
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1000
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1003
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 680
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 681
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 682
    return-object p0
.end method

.method public setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 603
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    .line 604
    return-object p0
.end method

.method public setContentDividerVisible(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 980
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsContentDividerVisibleParams:Z

    .line 981
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 700
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 702
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 457
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 458
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 490
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 499
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 500
    return-object p0
.end method

.method public setIconAttribute(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 513
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 514
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 515
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 516
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 967
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 968
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 652
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 653
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 654
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 664
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 665
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 666
    return-object p0
.end method

.method public setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 468
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 477
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 478
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 725
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 726
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 727
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 728
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 729
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 779
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 780
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 781
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 782
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 784
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 751
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 752
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 753
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 754
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 755
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 554
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 555
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 566
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 567
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 568
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 579
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 580
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 581
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 592
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 593
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 594
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 621
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 622
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 631
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 632
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 890
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 891
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 641
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 642
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 528
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 529
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 540
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 541
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 542
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 975
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 976
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 804
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 805
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 806
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 807
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 808
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 829
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 830
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 831
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 832
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 834
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 874
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 875
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 876
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 877
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 878
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 852
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 853
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 854
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 855
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 856
    return-object p0
.end method

.method public setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 432
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 441
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 442
    return-object p0
.end method

.method public setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 903
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 904
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 905
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 906
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 918
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 919
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 920
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 921
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 949
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 950
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 951
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 952
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 953
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 954
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p5, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 955
    return-object p0
.end method

.method public show()Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 1012
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 1013
    return-object v0
.end method
