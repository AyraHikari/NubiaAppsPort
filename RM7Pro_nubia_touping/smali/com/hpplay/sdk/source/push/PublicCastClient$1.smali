.class Lcom/hpplay/sdk/source/push/PublicCastClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/push/PublicCastClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/push/PublicCastClient;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/push/PublicCastClient;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$1;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "ImServer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "PublicCastClient"

    const-string v1, "start connect IM server"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$1;->a:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->c()V

    .line 108
    :cond_0
    return-void
.end method
