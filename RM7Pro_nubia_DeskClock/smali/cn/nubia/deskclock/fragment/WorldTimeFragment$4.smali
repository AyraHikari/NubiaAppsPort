.class Lcn/nubia/deskclock/fragment/WorldTimeFragment$4;
.super Ljava/lang/Object;
.source "WorldTimeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/WorldTimeFragment;->deleteSelection(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    .prologue
    .line 346
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$4;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 349
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$4;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$302(Lcn/nubia/deskclock/fragment/WorldTimeFragment;Z)Z

    .line 350
    return-void
.end method
