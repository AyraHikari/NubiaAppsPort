.class public Lcn/nubia/k/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    const-class v0, Lcn/nubia/k/c/c;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 27
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "DatabaseUtils"

    const-string p1, "insertDatabase fail parameter is null"

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 29
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
