.class final Lcom/zte/mifavor/utils/UIUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/utils/UIUtils;->setBottomBarVisibilityWithAnim(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bottombar:Landroid/view/ViewGroup;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/zte/mifavor/utils/UIUtils$1;->val$bottombar:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/zte/mifavor/utils/UIUtils$1;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 184
    iget-object p1, p0, Lcom/zte/mifavor/utils/UIUtils$1;->val$bottombar:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/zte/mifavor/utils/UIUtils$1;->val$visibility:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
