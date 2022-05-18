.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$fromUser:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 428
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 433
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$102(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 434
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 436
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->cancelled:Z

    if-nez p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$fromUser:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$fromUser:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;IZ)V

    .line 438
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;

    if-eqz p1, :cond_1

    .line 439
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onHidden(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;IZ)V

    .line 421
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$102(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 422
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 423
    iput-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->cancelled:Z

    return-void
.end method
