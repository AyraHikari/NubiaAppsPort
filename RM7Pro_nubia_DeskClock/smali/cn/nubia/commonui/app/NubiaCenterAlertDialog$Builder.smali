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
    .line 371
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 387
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 388
    iput p2, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->mTheme:I

    .line 389
    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .locals 4

    .prologue
    .line 965
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 966
    .local v0, "dialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-static {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->access$000(Lcn/nubia/commonui/app/NubiaCenterAlertDialog;)Lcn/nubia/commonui/app/NubiaCenterAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 967
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCancelable(Z)V

    .line 968
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 969
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 971
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 972
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 973
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 974
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 976
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 658
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 659
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 660
    return-object p0
.end method

.method public setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 581
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    .line 582
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 678
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 680
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 435
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 436
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 468
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 477
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 478
    return-object p0
.end method

.method public setIconAttribute(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 491
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 492
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 493
    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 494
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 945
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 946
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 630
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 631
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 632
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 642
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 643
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 644
    return-object p0
.end method

.method public setMessage(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 446
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 455
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 456
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 703
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 704
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 705
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 706
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 707
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 757
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 758
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 759
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 762
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 729
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 730
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 731
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 732
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 733
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 531
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 532
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 533
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 544
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 545
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 546
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 557
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 558
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 559
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 570
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 571
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 572
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 599
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 600
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 609
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 610
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 868
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 869
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 619
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 620
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 505
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 506
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 507
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 518
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 519
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 520
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 953
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 954
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 782
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 783
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 784
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 785
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 786
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 807
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 808
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 809
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 810
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 812
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 852
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 853
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 854
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 855
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 856
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 830
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 831
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 832
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 833
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 834
    return-object p0
.end method

.method public setTitle(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 410
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 419
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 420
    return-object p0
.end method

.method public setView(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 881
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 882
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 883
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 884
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 896
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 897
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 898
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 899
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
    .line 926
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 927
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 928
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 929
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 930
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 931
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 932
    iget-object v0, p0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p5, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 933
    return-object p0
.end method

.method public show()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .locals 1

    .prologue
    .line 984
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v0

    .line 985
    .local v0, "dialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 986
    return-object v0
.end method
