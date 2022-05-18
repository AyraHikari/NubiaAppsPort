.class Lcom/hpplay/sdk/source/c/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/c/b;


# direct methods
.method private constructor <init>(Lcom/hpplay/sdk/source/c/b;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/c/b;Lcom/hpplay/sdk/source/c/b$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/c/b$a;-><init>(Lcom/hpplay/sdk/source/c/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;)I

    move-result v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->checkLoaclPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v1}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;)I

    move-result v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;I)I

    .line 122
    const-string v0, "LelinkServerInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port is use ,new port is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    const-string v0, "LelinkServerInstance"

    const-string v1, "port not use"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;I)I

    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->b(Lcom/hpplay/sdk/source/c/b;)Lcom/hpplay/sdk/source/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/c/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    new-instance v1, Lcom/hpplay/sdk/source/c/a;

    iget-object v2, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v2}, Lcom/hpplay/sdk/source/c/b;->c(Lcom/hpplay/sdk/source/c/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v3}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/hpplay/sdk/source/c/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;Lcom/hpplay/sdk/source/c/a;)Lcom/hpplay/sdk/source/c/a;

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->b(Lcom/hpplay/sdk/source/c/b;)Lcom/hpplay/sdk/source/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const-string v0, "LelinkServerInstance"

    const-string v1, "start server"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 156
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "LelinkServerInstance"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->b(Lcom/hpplay/sdk/source/c/b;)Lcom/hpplay/sdk/source/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "LelinkServerInstance"

    const-string v1, "server is start"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->b(Lcom/hpplay/sdk/source/c/b;)Lcom/hpplay/sdk/source/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->k()V

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    new-instance v1, Lcom/hpplay/sdk/source/c/a;

    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v3}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/hpplay/sdk/source/c/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/c/b;->a(Lcom/hpplay/sdk/source/c/b;Lcom/hpplay/sdk/source/c/a;)Lcom/hpplay/sdk/source/c/a;

    .line 148
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b$a;->a:Lcom/hpplay/sdk/source/c/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/c/b;->b(Lcom/hpplay/sdk/source/c/b;)Lcom/hpplay/sdk/source/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string v1, "LelinkServerInstance"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/c/b$a;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/c/b$a;->a(Ljava/lang/Integer;)V

    return-void
.end method
