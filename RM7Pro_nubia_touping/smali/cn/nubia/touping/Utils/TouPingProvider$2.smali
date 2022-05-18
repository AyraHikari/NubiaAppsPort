.class Lcn/nubia/touping/Utils/TouPingProvider$2;
.super Ljava/lang/Object;
.source "TouPingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/TouPingProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/TouPingProvider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/TouPingProvider;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/TouPingProvider;

    .prologue
    .line 350
    iput-object p1, p0, Lcn/nubia/touping/Utils/TouPingProvider$2;->this$0:Lcn/nubia/touping/Utils/TouPingProvider;

    iput-object p2, p0, Lcn/nubia/touping/Utils/TouPingProvider$2;->val$extras:Landroid/os/Bundle;

    iput-object p3, p0, Lcn/nubia/touping/Utils/TouPingProvider$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcn/nubia/touping/Utils/TouPingProvider$2;->val$extras:Landroid/os/Bundle;

    invoke-static {v0}, Lcn/nubia/touping/Utils/TouPingProvider;->access$102(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 354
    iget-object v0, p0, Lcn/nubia/touping/Utils/TouPingProvider$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/touping/Utils/TouPingProvider;->access$000(Landroid/content/Context;)V

    .line 355
    return-void
.end method
