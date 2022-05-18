.class final Lcom/loc/dn$a;
.super Landroid/content/BroadcastReceiver;
.source "Aps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/dn;


# direct methods
.method constructor <init>(Lcom/loc/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    iget-object v0, v0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    iget-object v0, v0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resultsUpdated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    iget-object v0, v0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    iget-object v0, v0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    iget-object v0, v0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn$a;->a:Lcom/loc/dn;

    iget-object v0, v0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->j()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
