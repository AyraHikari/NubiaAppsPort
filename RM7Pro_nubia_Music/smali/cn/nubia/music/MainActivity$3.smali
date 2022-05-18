.class Lcn/nubia/music/MainActivity$3;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->initScanManager(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;Z)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/music/MainActivity$3;->b:Lcn/nubia/music/MainActivity;

    iput-boolean p2, p0, Lcn/nubia/music/MainActivity$3;->a:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lcn/nubia/music/MainActivity$3;->b:Lcn/nubia/music/MainActivity;

    invoke-virtual {v0}, Lcn/nubia/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 141
    const-string v0, "local_first_start"

    invoke-static {v5, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate -- intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", found_song_cnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "found_song_cnt"

    .line 143
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 144
    if-eqz v2, :cond_0

    const-string v3, "found_song_cnt"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v0, "found_song_cnt = 0,auto scan"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 148
    :cond_0
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getLocalIdlist()[J

    move-result-object v2

    .line 149
    iget-boolean v3, p0, Lcn/nubia/music/MainActivity$3;->a:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 152
    :cond_2
    const-string v1, "local_first_start"

    invoke-static {v5, v1, v5}, Lcn/nubia/music/utils/SharedPrefersHelper;->putBoolean(ILjava/lang/String;Z)V

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/music/MainActivity$3;->b:Lcn/nubia/music/MainActivity;

    new-instance v1, Lcn/nubia/music/app/scan/MusicScanManager;

    iget-object v2, p0, Lcn/nubia/music/MainActivity$3;->b:Lcn/nubia/music/MainActivity;

    invoke-static {v2}, Lcn/nubia/music/MainActivity;->access$400(Lcn/nubia/music/MainActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Lcn/nubia/music/MainActivity$3$1;

    invoke-direct {v4, p0}, Lcn/nubia/music/MainActivity$3$1;-><init>(Lcn/nubia/music/MainActivity$3;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/music/app/scan/MusicScanManager;-><init>(Landroid/content/Context;ZLcn/nubia/music/app/scan/MusicScanManager$ScanCallback;)V

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$302(Lcn/nubia/music/MainActivity;Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager;

    .line 167
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/MainActivity$3;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/MainActivity$3;->a(Ljava/lang/Boolean;)V

    return-void
.end method
