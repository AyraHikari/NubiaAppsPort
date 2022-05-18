.class Lcn/nubia/i/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/d;

.field private b:Z


# direct methods
.method private constructor <init>(Lcn/nubia/i/d;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcn/nubia/i/d$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/i/d;Lcn/nubia/i/d$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/i/d$a;-><init>(Lcn/nubia/i/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcn/nubia/i/d$b;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadDlc"

    invoke-static {v2, v1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance p1, Lcn/nubia/i/k;

    invoke-direct {p1}, Lcn/nubia/i/k;-><init>()V

    const-string v3, "code"

    .line 208
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcn/nubia/i/k;->d:I

    .line 209
    iget v3, p1, Lcn/nubia/i/k;->d:I

    if-eqz v3, :cond_1

    const-string v3, "message"

    .line 210
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcn/nubia/i/k;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v2, Lcn/nubia/i/d$b;

    iget-object v3, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    iget p1, p1, Lcn/nubia/i/k;->d:I

    invoke-direct {v2, v3, p1, v1, v0}, Lcn/nubia/i/d$b;-><init>(Lcn/nubia/i/d;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v2, "data"

    .line 215
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "photoFilterItem"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 216
    new-instance v2, Lcn/nubia/i/d$b;

    iget-object v3, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    iget p1, p1, Lcn/nubia/i/k;->d:I

    const-string v4, "fileUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, p1, v0, v1}, Lcn/nubia/i/d$b;-><init>(Lcn/nubia/i/d;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private a(Lcn/nubia/i/i;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->a(Lcn/nubia/i/d;)Lcn/nubia/i/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcn/nubia/i/i;->k()I

    move-result v0

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p1, v1}, Lcn/nubia/i/i;->b(I)V

    .line 189
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {p1}, Lcn/nubia/i/d;->a(Lcn/nubia/i/d;)Lcn/nubia/i/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/i/j;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    sget-object v1, Lcn/nubia/i/l;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcn/nubia/i/l;->l:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    iget-object v1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v1}, Lcn/nubia/i/d;->a(Lcn/nubia/i/d;)Lcn/nubia/i/j;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcn/nubia/i/j;->a(Landroid/content/ContentValues;Lcn/nubia/i/i;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 174
    iget-boolean v0, p0, Lcn/nubia/i/d$a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadDlc"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/d$a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 179
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/i/d$a;->b:Z

    .line 180
    iget-object v1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v1}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 10

    .line 63
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "DownloadDlc"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PrismaLeak] thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/d$a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->a(Lcn/nubia/i/d;)Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/j;->c()V

    .line 67
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/i/d$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 68
    :cond_1
    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/i/d$a;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v1}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    monitor-exit v0

    goto/16 :goto_e

    .line 73
    :cond_2
    iget-object v1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v1}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_3

    .line 75
    :try_start_1
    iget-object v1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v1}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v1

    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 79
    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v1}, Lcn/nubia/i/d;->b(Lcn/nubia/i/d;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/c;

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "DownloadDlc"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoadTask.getLocalPhotoFillter().getFileState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/i/i;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/i;->h()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v0

    const-string v3, "DownloadDlc"

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localPhotoFillter.getFilePath(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "null"

    invoke-virtual {v0}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 91
    :cond_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "filter_id"

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/i/i;->i()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v3}, Lcn/nubia/i/p;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadDlc"

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postParam: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "https://photofilter-api.nubia.com/photo_filter/last"

    .line 95
    invoke-static {v4, v3}, Lcn/nubia/i/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadDlc"

    const-string v5, "sendPost End"

    .line 96
    invoke-static {v4, v5}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v3}, Lcn/nubia/i/d$a;->a(Ljava/lang/String;)Lcn/nubia/i/d$b;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 98
    iget-object v4, v3, Lcn/nubia/i/d$b;->c:Ljava/lang/String;

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "DownloadDlc"

    const-string v5, "urlString is null"

    .line 99
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v3, :cond_8

    .line 102
    iget-object v4, v3, Lcn/nubia/i/d$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/nubia/i/i;->d(Ljava/lang/String;)V

    .line 103
    iget v4, v3, Lcn/nubia/i/d$b;->a:I

    invoke-virtual {v0, v4}, Lcn/nubia/i/i;->c(I)V

    .line 104
    iget-object v4, v3, Lcn/nubia/i/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/nubia/i/i;->g(Ljava/lang/String;)V

    :cond_8
    const-string v4, "DownloadDlc"

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; urlString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_9
    iget-boolean v3, p0, Lcn/nubia/i/d$a;->b:Z

    if-eqz v3, :cond_a

    goto/16 :goto_e

    :cond_a
    const-string v3, "DownloadDlc"

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 113
    invoke-virtual {v0, v2}, Lcn/nubia/i/i;->b(I)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 119
    :try_start_3
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v0}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v7}, Lcn/nubia/i/d;->c(Lcn/nubia/i/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_dlc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcn/nubia/i/i;->b(Ljava/lang/String;)V

    const-string v6, "DownloadDlc"

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileDir: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v8}, Lcn/nubia/i/d;->c(Lcn/nubia/i/d;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v4, 0x400

    :try_start_5
    new-array v4, v4, [B

    .line 126
    :goto_2
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_b

    const/4 v8, 0x0

    .line 127
    invoke-virtual {v6, v4, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_b
    const/4 v4, 0x3

    .line 129
    invoke-virtual {v0, v4}, Lcn/nubia/i/i;->b(I)V

    const-string v4, "DownloadDlc"

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is.available(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_c

    .line 138
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 140
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    :cond_c
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    :catch_2
    move-exception v4

    .line 148
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception v4

    goto :goto_4

    :catch_4
    move-exception v4

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v6, v4

    goto/16 :goto_9

    :catch_5
    move-exception v6

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_4

    :catch_6
    move-exception v6

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v4

    goto :goto_a

    :catch_7
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    .line 134
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_d

    .line 138
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_5

    :catch_8
    move-exception v4

    .line 140
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_5
    if-eqz v6, :cond_f

    .line 146
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    :catch_9
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    .line 132
    :goto_6
    :try_start_b
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v5, :cond_e

    .line 138
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_7

    :catch_a
    move-exception v4

    .line 140
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_7
    if-eqz v6, :cond_f

    .line 146
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 153
    :cond_f
    :goto_8
    iget-boolean v4, p0, Lcn/nubia/i/d$a;->b:Z

    if-eqz v4, :cond_10

    goto :goto_e

    .line 157
    :cond_10
    invoke-direct {p0, v0}, Lcn/nubia/i/d$a;->a(Lcn/nubia/i/i;)V

    const-string v0, "DownloadDlc"

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catchall_2
    move-exception v0

    :goto_9
    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_11

    .line 138
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_b
    if-eqz v6, :cond_12

    .line 146
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    :cond_12
    :goto_c
    throw v0

    .line 159
    :cond_13
    invoke-virtual {v0}, Lcn/nubia/i/i;->k()I

    move-result v2

    const/16 v3, 0xfa0

    if-ne v2, v3, :cond_14

    .line 160
    invoke-direct {p0, v0}, Lcn/nubia/i/d$a;->a(Lcn/nubia/i/i;)V

    .line 163
    :cond_14
    :goto_d
    iget-boolean v0, p0, Lcn/nubia/i/d$a;->b:Z

    if-eqz v0, :cond_16

    .line 169
    :cond_15
    :goto_e
    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->a(Lcn/nubia/i/d;)Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/j;->d()V

    const-string v0, "DownloadDlc"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PrismaLeak] thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/d$a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_16
    iget-object v0, p0, Lcn/nubia/i/d$a;->a:Lcn/nubia/i/d;

    invoke-static {v0}, Lcn/nubia/i/d;->d(Lcn/nubia/i/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    .line 83
    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v1
.end method
