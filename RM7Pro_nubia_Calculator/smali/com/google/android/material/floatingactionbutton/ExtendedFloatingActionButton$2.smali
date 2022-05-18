.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->val$fromUser:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 513
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$102(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 514
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 516
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;

    if-eqz p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->val$listener:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onShown(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;IZ)V

    .line 507
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$102(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 508
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
