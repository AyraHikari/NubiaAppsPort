.class public Lcn/nubia/gallery3d/commonui/ui/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private final ENTER_TOTAL_DURATION_TIME:I

.field public animView:Landroid/view/View;

.field public mContentView:Landroid/view/View;

.field public mCtx:Landroid/content/Context;

.field public mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field public mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field public parentViewBg:Landroid/view/View;

.field public tvTitel:Landroid/widget/TextView;

.field public viewHeght:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1100a3

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 34
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const/16 v0, 0x12c

    .line 38
    iput v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->ENTER_TOTAL_DURATION_TIME:I

    .line 43
    iput-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public initDialog()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f11018a

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenWidth(Landroid/content/Context;)F

    move-result v2

    .line 53
    iget-object v3, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenHeight(Landroid/content/Context;)F

    move-result v3

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    float-to-int v2, v2

    .line 55
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setDisMissListener()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->parentViewBg:Landroid/view/View;

    new-instance v1, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$1;-><init>(Lcn/nubia/gallery3d/commonui/ui/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnBackUsable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance p1, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$2;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$2;-><init>(Lcn/nubia/gallery3d/commonui/ui/BaseDialog;)V

    .line 85
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->tvTitel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->tvTitel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startEntryAnimation(I)V
    .locals 0

    return-void
.end method

.method public startExitAnimation(I)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->dismiss()V

    return-void
.end method
