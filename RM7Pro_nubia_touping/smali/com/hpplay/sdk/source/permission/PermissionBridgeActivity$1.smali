.class Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity$1;->a:Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity$1;->a:Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;

    invoke-static {v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;)V

    .line 222
    return-void
.end method
