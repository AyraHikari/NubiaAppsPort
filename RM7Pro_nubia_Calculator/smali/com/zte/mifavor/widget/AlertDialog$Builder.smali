.class public Lcom/zte/mifavor/widget/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 388
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    .line 389
    iput p2, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lcom/zte/mifavor/widget/AlertDialog;
    .locals 4

    .line 947
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 948
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertDialog;->access$000(Lcom/zte/mifavor/widget/AlertDialog;)Lcom/zte/mifavor/widget/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertController$AlertParams;->apply(Lcom/zte/mifavor/widget/AlertController;)V

    .line 949
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setCancelable(Z)V

    .line 950
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 951
    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 954
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 955
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 956
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 652
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 670
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 671
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 3

    .line 485
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 486
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 487
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setInfoButton(ILandroid/view/View$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonText:Ljava/lang/CharSequence;

    .line 973
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setInfoButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonText:Ljava/lang/CharSequence;

    .line 979
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInfoButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 625
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 637
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 695
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 696
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    .line 697
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 747
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p4, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 748
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 749
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 750
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 720
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 721
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    .line 722
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 526
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 539
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 552
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 565
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 500
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 513
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mRecycleOnMeasure:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 771
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 772
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 773
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 795
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p4, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 796
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 797
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 798
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 838
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 839
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 840
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 817
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 818
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 819
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 866
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    .line 867
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 880
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    .line 881
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean v0, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 910
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    .line 911
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 912
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 913
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p3, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingTop:I

    .line 914
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p4, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingRight:I

    .line 915
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p5, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public show()Lcom/zte/mifavor/widget/AlertDialog;
    .locals 0

    .line 966
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object p0

    .line 967
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    return-object p0
.end method
