.class Lcom/android/calculator2/ExpressionDB$AsyncWriter;
.super Landroid/os/AsyncTask;
.source "ExpressionDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ExpressionDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/ExpressionDB;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/ExpressionDB;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/ExpressionDB;Lcom/android/calculator2/ExpressionDB$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncWriter;-><init>(Lcom/android/calculator2/ExpressionDB;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    .line 476
    aget-object v1, p1, v0

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 477
    iget-object v3, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v3}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "expressions"

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 478
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p0}, Lcom/android/calculator2/ExpressionDB;->access$1200(Lcom/android/calculator2/ExpressionDB;)V

    const-wide/16 p0, -0x1

    cmp-long p0, v3, p0

    if-nez p0, :cond_0

    .line 481
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long p0, v3, v1

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    .line 485
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 483
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected row id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 473
    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6

    .line 490
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {v0}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 492
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    const-wide/16 v2, 0x1

    if-lez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v1, v4, v5}, Lcom/android/calculator2/ExpressionDB;->access$1002(Lcom/android/calculator2/ExpressionDB;J)J

    goto :goto_0

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v1, v4, v5}, Lcom/android/calculator2/ExpressionDB;->access$902(Lcom/android/calculator2/ExpressionDB;J)J

    .line 497
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->displayDatabaseWarning()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 497
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 473
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncWriter;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
