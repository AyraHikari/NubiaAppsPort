.class Lcom/android/calculator2/ExpressionDB$AsyncEraser;
.super Landroid/os/AsyncTask;
.source "ExpressionDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ExpressionDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncEraser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/ExpressionDB;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/ExpressionDB;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/ExpressionDB;Lcom/android/calculator2/ExpressionDB$1;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncEraser;-><init>(Lcom/android/calculator2/ExpressionDB;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 382
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 385
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "DROP INDEX IF EXISTS timestamp_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "DROP TABLE IF EXISTS expressions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "VACUUM"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Calculator"

    const-string v1, "Database VACUUM failed\n"

    .line 390
    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "CREATE TABLE expressions (_id INTEGER PRIMARY KEY,expression BLOB,flags INTEGER,timeStamp INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p0}, Lcom/android/calculator2/ExpressionDB;->access$200(Lcom/android/calculator2/ExpressionDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "CREATE INDEX timestamp_index ON expressions(timeStamp)"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 382
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 399
    iget-object p1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p1}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    const-wide/32 v1, -0x989680

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/ExpressionDB;->access$902(Lcom/android/calculator2/ExpressionDB;J)J

    .line 402
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    const-wide/32 v1, 0x989680

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/ExpressionDB;->access$1002(Lcom/android/calculator2/ExpressionDB;J)J

    .line 403
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    const-wide/16 v1, -0xa

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/ExpressionDB;->access$302(Lcom/android/calculator2/ExpressionDB;J)J

    .line 404
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    iget-object v1, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calculator2/ExpressionDB;->access$502(Lcom/android/calculator2/ExpressionDB;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/ExpressionDB;->access$402(Lcom/android/calculator2/ExpressionDB;J)J

    .line 405
    iget-object v0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calculator2/ExpressionDB;->access$802(Lcom/android/calculator2/ExpressionDB;Z)Z

    .line 406
    iget-object p0, p0, Lcom/android/calculator2/ExpressionDB$AsyncEraser;->this$0:Lcom/android/calculator2/ExpressionDB;

    invoke-static {p0}, Lcom/android/calculator2/ExpressionDB;->access$100(Lcom/android/calculator2/ExpressionDB;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 407
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
