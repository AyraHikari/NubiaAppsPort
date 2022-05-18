.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;
.super Ljava/lang/Object;
.source "NubiaMorePopupMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;->startExitAnimation(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 275
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iput-object p2, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;->val$popup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 294
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 295
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 289
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 290
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 285
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 280
    return-void
.end method
