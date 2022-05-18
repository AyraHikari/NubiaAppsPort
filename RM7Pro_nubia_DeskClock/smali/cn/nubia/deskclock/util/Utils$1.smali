.class final Lcn/nubia/deskclock/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcn/nubia/deskclock/util/Utils$1;->val$label:Ljava/lang/String;

    iput-object p2, p0, Lcn/nubia/deskclock/util/Utils$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/deskclock/util/Utils$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcn/nubia/deskclock/util/Utils$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 694
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForceTouch label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/util/Utils$1;->val$label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/util/Utils$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcn/nubia/deskclock/util/Utils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/util/Utils$1;->val$label:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/deskclock/util/Utils$1;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/deskclock/util/Utils$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/util/Utils;->updateForceTouchlabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 696
    return-void
.end method
