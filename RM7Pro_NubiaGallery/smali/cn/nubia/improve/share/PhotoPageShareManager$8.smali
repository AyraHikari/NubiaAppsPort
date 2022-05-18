.class Lcn/nubia/improve/share/PhotoPageShareManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoPageShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$8;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 931
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 932
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$8;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    return-void
.end method
