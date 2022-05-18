.class public Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/ScreenCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/hpplay/sdk/source/mirror/ScreenCastService;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    return-object v0
.end method
