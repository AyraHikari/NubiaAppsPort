.class public Lcn/nubia/music/online/api/NubiaManagerFactory;
.super Ljava/lang/Object;
.source "NubiaManagerFactory.java"


# static fields
.field public static final ARTIST_MANAGER:I = 0x1

.field public static final IMAGE_MANAGER:I = 0x5

.field public static final LOCALPLAYER_MANAGER:I = 0x6

.field public static final LYRIC_MANAGER:I = 0x2

.field public static final MEMBER_MANAGER:I = 0x9

.field public static final RADIO_MANAGER:I = 0x3

.field public static final SEARCH_MANAGER:I = 0x4

.field public static final STREAMPLAYER_MANAGER:I = 0x7

.field public static final WRITETAG_MANAGER:I = 0x8

.field public static final XIAMI_VIP_MANAGER:I = 0xa

.field private static map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/music/online/api/NubiaManagerFactory;->map:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createManager(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 22
    const-class v2, Lcn/nubia/music/online/api/NubiaManagerFactory;

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v1, Lcn/nubia/music/online/api/NubiaManagerFactory;->map:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/music/online/api/NubiaManagerFactory;->map:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 27
    sget-object v0, Lcn/nubia/music/online/api/NubiaManagerFactory;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2

    .line 64
    :goto_0
    return-object v0

    .line 30
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    .line 61
    :goto_1
    if-eqz v0, :cond_1

    .line 62
    sget-object v3, Lcn/nubia/music/online/api/NubiaManagerFactory;->map:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    move-object v1, v0

    .line 33
    goto :goto_1

    :pswitch_1
    move-object v1, v0

    .line 36
    goto :goto_1

    :pswitch_2
    move-object v1, v0

    .line 39
    goto :goto_1

    :pswitch_3
    move-object v1, v0

    .line 42
    goto :goto_1

    :pswitch_4
    move-object v1, v0

    .line 45
    goto :goto_1

    .line 47
    :pswitch_5
    :try_start_1
    new-instance v0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;-><init>(Landroid/content/Context;)V

    monitor-exit v2

    goto :goto_0

    .line 49
    :pswitch_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_7
    move-object v1, v0

    .line 53
    goto :goto_1

    :pswitch_8
    move-object v1, v0

    .line 56
    goto :goto_1

    :pswitch_9
    move-object v1, v0

    .line 58
    goto :goto_1

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
