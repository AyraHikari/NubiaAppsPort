.class public final Lcom/loc/aq;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/aq$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/loc/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/loc/aq;->a:I

    const-string v0, ""

    sput-object v0, Lcom/loc/aq;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/aq;
    .locals 1

    sget-object v0, Lcom/loc/aq;->c:Lcom/loc/aq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/aq;

    invoke-direct {v0}, Lcom/loc/aq;-><init>()V

    sput-object v0, Lcom/loc/aq;->c:Lcom/loc/aq;

    :cond_0
    sget-object v0, Lcom/loc/aq;->c:Lcom/loc/aq;

    return-object v0
.end method

.method public static a(Lcom/loc/av;Z)Lcom/loc/aw;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    invoke-static {p0}, Lcom/loc/at;->a(Lcom/loc/av;)I

    move-result v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/loc/aq;->a(Lcom/loc/av;ZI)Lcom/loc/aw;
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/loc/aw;->a:[B

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/loc/aw;->a:[B

    array-length v2, v2

    if-gtz v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/loc/at;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/loc/aq;->a(Lcom/loc/av;ZI)Lcom/loc/aw;
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    return-object v0

    :catch_0
    move-exception v2

    invoke-static {v1}, Lcom/loc/at;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    throw v2

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static a(Lcom/loc/av;ZI)Lcom/loc/aw;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/j;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/av;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0}, Lcom/loc/av;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/loc/j;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/j;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/loc/at;

    invoke-direct {v0, p0, p1}, Lcom/loc/at;-><init>(Lcom/loc/av;Z)V

    invoke-virtual {p0}, Lcom/loc/av;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/loc/av;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/loc/av;->o()Z

    move-result v3

    invoke-virtual {p0}, Lcom/loc/av;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/loc/av;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/loc/av;->e()[B

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/loc/av;->b_()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/at;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v6

    :cond_4
    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/loc/at;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BI)Lcom/loc/aw;
    :try_end_2
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/loc/av;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/aq;->a(Lcom/loc/av;Z)Lcom/loc/aw;
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/aw;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/loc/j;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/loc/av;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/aq;->a(Lcom/loc/av;Z)Lcom/loc/aw;
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/aw;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "bm"

    const-string v2, "msp"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/j;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/loc/av;)Lcom/loc/aw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/aq;->a(Lcom/loc/av;Z)Lcom/loc/aw;
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "bm"

    const-string v2, "mp"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/j;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
