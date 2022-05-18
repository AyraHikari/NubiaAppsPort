.class public final Lcom/loc/ae;
.super Ljava/lang/Object;
.source "DBOperation.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/loc/ad;",
            ">;",
            "Lcom/loc/ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/loc/ah;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/loc/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loc/ae;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/loc/ad;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/loc/ah;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/loc/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/loc/ah;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/ad;)V

    iput-object v0, p0, Lcom/loc/ae;->a:Lcom/loc/ah;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Lcom/loc/ae;->c:Lcom/loc/ad;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Lcom/loc/af;)Landroid/content/ContentValues;
    .locals 8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lcom/loc/af;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/loc/ae;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/loc/ag;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/loc/ag;

    invoke-interface {v0}, Lcom/loc/ag;->b()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v1

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ae;->a:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "grd"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/loc/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/loc/ad;",
            ">;)",
            "Lcom/loc/ad;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-class v1, Lcom/loc/ae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/ae;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/ae;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/loc/ae;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/loc/af;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/loc/af;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/loc/af;->b()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/loc/ae;->a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/loc/ag;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/loc/ag;

    invoke-interface {v0}, Lcom/loc/ag;->b()I

    move-result v6

    invoke-interface {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lcom/loc/af;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/af;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/loc/af;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    iget-object v0, p0, Lcom/loc/ae;->a:Lcom/loc/ah;

    invoke-virtual {v0}, Lcom/loc/ah;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "gwd"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Class;)Lcom/loc/af;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/loc/af;"
        }
    .end annotation

    const-class v0, Lcom/loc/af;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/loc/af;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/loc/ae;->c:Lcom/loc/ad;

    monitor-enter v10

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/loc/ae;->b(Ljava/lang/Class;)Lcom/loc/af;

    move-result-object v11

    invoke-static {v11}, Lcom/loc/ae;->a(Lcom/loc/af;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/ae;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-nez v1, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v10

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_5
    :goto_3
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1, p2, v11}, Lcom/loc/ae;->a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/loc/af;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_4
    :try_start_8
    const-string v2, "dbs"

    const-string v3, "sld"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_6

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    :goto_5
    :try_start_a
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    :goto_6
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v0, v8

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_9
    :goto_7
    :try_start_d
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v0

    :try_start_e
    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_4
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_6
    move-exception v0

    const-string v1, "dbs"

    const-string v2, "sld"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_8
    if-eqz v1, :cond_a

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_a
    :goto_9
    :try_start_10
    iget-object v1, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_b
    :goto_a
    :try_start_11
    throw v0

    :catch_7
    move-exception v1

    const-string v2, "dbs"

    const-string v3, "sld"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_8
    move-exception v1

    const-string v2, "dbs"

    const-string v3, "sld"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v1, v9

    goto :goto_4
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/loc/ae;->c:Lcom/loc/ad;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/loc/ae;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/loc/ae;->c:Lcom/loc/ad;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/loc/ae;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ae;->b(Ljava/lang/Class;)Lcom/loc/af;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ae;->a(Lcom/loc/af;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1, v3}, Lcom/loc/ae;->a(Ljava/lang/Object;Lcom/loc/af;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v3, "dbs"

    const-string v4, "itd"

    invoke-static {v0, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_2
    move-exception v0

    iget-object v3, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    iget-object v2, p0, Lcom/loc/ae;->c:Lcom/loc/ad;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ae;->b(Ljava/lang/Class;)Lcom/loc/af;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ae;->a(Lcom/loc/af;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_5
    :try_start_b
    invoke-static {p1, v0}, Lcom/loc/ae;->a(Ljava/lang/Object;Lcom/loc/af;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0}, Lcom/loc/ae;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_6

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_0

    :cond_6
    :try_start_c
    iget-object v4, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v0, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_7
    :goto_2
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_e
    const-string v3, "dbs"

    const-string v4, "udd"

    invoke-static {v0, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2

    :catchall_4
    move-exception v0

    iget-object v3, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/loc/ae;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_8
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
.end method
