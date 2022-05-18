.class Lcn/nubia/deskclock/fragment/CountdownFragment$8;
.super Ljava/lang/Object;
.source "CountdownFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;->deleteSelection(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 945
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$8;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 948
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$8;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1602(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z

    .line 949
    return-void
.end method
