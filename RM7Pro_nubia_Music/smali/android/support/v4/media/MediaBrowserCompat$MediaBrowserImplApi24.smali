.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;
.super Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi24"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1947
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    .line 1948
    return-void
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2

    .prologue
    .line 1953
    if-nez p2, :cond_0

    .line 1954
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    .line 1955
    invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    .line 1954
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1960
    :goto_0
    return-void

    .line 1957
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    .line 1958
    invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    .line 1957
    invoke-static {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompatApi24;->subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2

    .prologue
    .line 1964
    if-nez p2, :cond_0

    .line 1965
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1970
    :goto_0
    return-void

    .line 1967
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;

    .line 1968
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    .line 1967
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi24;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
