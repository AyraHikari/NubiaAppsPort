.class Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/ShareUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareSortsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mAction:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mType:Ljava/lang/String;

    .line 175
    iput p4, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mCount:I

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p1, "content://cn.nubia.share.ShareContentProvider"

    .line 180
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mAction:Ljava/lang/String;

    const-string v3, "share_action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mType:Ljava/lang/String;

    const-string v3, "share_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mAction:Ljava/lang/String;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mType:Ljava/lang/String;

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "share_file_suffix_name"

    if-eqz v2, :cond_0

    const-string v2, "png"

    .line 186
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "mp4"

    .line 188
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    :goto_0
    iget v2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mCount:I

    const-string v3, "share_num"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    :try_start_0
    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$ShareSortsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "getShareSort"

    invoke-virtual {v2, v0, v3, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "share_data"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "share_resolve_list"

    .line 196
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 197
    invoke-static {v1}, Lcn/nubia/improve/share/ShareUtils;->access$300(Ljava/util/ArrayList;)V

    const-string v1, "share_video_cut"

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 199
    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils;->setCutVideo(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
