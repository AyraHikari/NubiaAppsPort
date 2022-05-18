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

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 368
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 383
    invoke-static {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 384
    iput p2, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->mTheme:I

    .line 385
    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/commonui/app/AlertDialog;
    .locals 4

    .prologue
    .line 961
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 962
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertDialog;->access$000(Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 963
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 964
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 965
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 967
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 968
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 969
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 972
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 655
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 656
    return-object p0
.end method

.method public setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCancelable:Z

    .line 578
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 674
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 676
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 432
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 464
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 474
    return-object p0
.end method

.method public setIconAttribute(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 488
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 489
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIconId:I

    .line 490
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 942
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 627
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 628
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 639
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 640
    return-object p0
.end method

.method public setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 442
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 452
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 700
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 701
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 702
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 703
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 754
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 755
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 758
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

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

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 528
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 529
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 541
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 542
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 554
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 555
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 567
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 568
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 596
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 606
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 865
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 616
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 502
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 503
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 515
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 516
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 950
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 779
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 780
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 781
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 782
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 804
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 805
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 806
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 808
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 849
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 850
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 851
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 852
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 827
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 828
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItem:I

    .line 829
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 830
    return-object p0
.end method

.method public setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 406
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 416
    return-object p0
.end method

.method public setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 878
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 879
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 880
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 893
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 894
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 895
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 923
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 924
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 925
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p2, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 926
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p3, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 927
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p4, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 928
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertDialog$Builder;->P:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput p5, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 929
    return-object p0
.end method

.method public show()Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 980
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 982
    return-object v0
.end method
