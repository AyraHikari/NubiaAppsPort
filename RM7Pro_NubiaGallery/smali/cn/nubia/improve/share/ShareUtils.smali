.class public Lcn/nubia/improve/share/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;,
        Lcn/nubia/improve/share/ShareUtils$LoadIconTask;,
        Lcn/nubia/improve/share/ShareUtils$DisplayInfo;
    }
.end annotation


# static fields
.field public static FENGSHENG_USER_ID:I = 0x270f

.field public static final FILEPROVIDER_URIS:Ljava/lang/String; = "share_uris"

.field public static final SHARE_ACTION:Ljava/lang/String; = "share_action"

.field private static final SHARE_CONTENT_PROVIDER:Ljava/lang/String; = "content://cn.nubia.share.ShareContentProvider"

.field public static final SHARE_DATA:Ljava/lang/String; = "share_data"

.field public static final SHARE_FILE_SUFFIX_NAME:Ljava/lang/String; = "share_file_suffix_name"

.field public static final SHARE_NUM:Ljava/lang/String; = "share_num"

.field public static final SHARE_POSITION:Ljava/lang/String; = "share_position"

.field public static final SHARE_RESOLVEINFO:Ljava/lang/String; = "share_resolveinfo"

.field private static final SHARE_RESOLVE_LIST:Ljava/lang/String; = "share_resolve_list"

.field public static final SHARE_TYPE:Ljava/lang/String; = "share_type"

.field private static final SHARE_VIDEO_CUT:Ljava/lang/String; = "share_video_cut"

.field private static final TAG:Ljava/lang/String; = "ShareUtils"

.field private static final WECHAT:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field private static final WECHAT_FAVORITES:Ljava/lang/String; = "com.tencent.mm.ui.tools.AddFavoriteUI"

.field private static final WECHAT_MOMENTS:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field private static mIsCutVideo:Z

.field private static resolveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/util/ArrayList;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcn/nubia/improve/share/ShareUtils;->setResolveList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static getCutVideo()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcn/nubia/improve/share/ShareUtils;->mIsCutVideo:Z

    return v0
.end method

.method public static getResolveList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lcn/nubia/improve/share/ShareUtils;->resolveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getShareSorts(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;

    .line 48
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 47
    invoke-virtual {v0, v1, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static isShareToWechat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.ui.tools.AddFavoriteUI"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static saveShareSorts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "share_action"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "share_type"

    .line 55
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.SEND"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "image/"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "share_file_suffix_name"

    if-eqz p1, :cond_0

    const-string p1, "png"

    .line 58
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "mp4"

    .line 60
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, "share_num"

    .line 63
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "share_position"

    .line 64
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "share_data"

    .line 65
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://cn.nubia.share.ShareContentProvider"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "saveShareSort"

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setCutVideo(Z)V
    .locals 0

    .line 71
    sput-boolean p0, Lcn/nubia/improve/share/ShareUtils;->mIsCutVideo:Z

    return-void
.end method

.method private static setResolveList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 209
    sput-object p0, Lcn/nubia/improve/share/ShareUtils;->resolveList:Ljava/util/ArrayList;

    return-void
.end method
