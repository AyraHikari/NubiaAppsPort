.class Lcn/nubia/touping/HomeActivity$1$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/HomeActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/touping/HomeActivity$1;

.field final synthetic val$isPlayMirrorStatus:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/HomeActivity$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/HomeActivity$1;

    .prologue
    .line 175
    iput-object p1, p0, Lcn/nubia/touping/HomeActivity$1$1;->this$1:Lcn/nubia/touping/HomeActivity$1;

    iput-boolean p2, p0, Lcn/nubia/touping/HomeActivity$1$1;->val$isPlayMirrorStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/touping/HomeActivity$1$1;->this$1:Lcn/nubia/touping/HomeActivity$1;

    iget-object v0, v0, Lcn/nubia/touping/HomeActivity$1;->this$0:Lcn/nubia/touping/HomeActivity;

    iget-boolean v1, p0, Lcn/nubia/touping/HomeActivity$1$1;->val$isPlayMirrorStatus:Z

    invoke-static {v0, v1}, Lcn/nubia/touping/HomeActivity;->access$200(Lcn/nubia/touping/HomeActivity;Z)V

    .line 179
    return-void
.end method
