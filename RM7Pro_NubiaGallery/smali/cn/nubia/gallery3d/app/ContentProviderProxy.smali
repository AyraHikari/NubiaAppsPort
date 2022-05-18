.class public Lcn/nubia/gallery3d/app/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderProxy.java"


# instance fields
.field private mContentProviderClient:Landroid/content/ContentProviderClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "media"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 38
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 26
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 27
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public release()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-result v0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ContentProviderProxy;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
