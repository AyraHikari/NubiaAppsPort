.class Lcn/nubia/music/MediaPlaybackService$15;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;Z)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    iput-boolean p2, p0, Lcn/nubia/music/MediaPlaybackService$15;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 944
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3100(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 945
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    const-string v3, "Music"

    invoke-virtual {v2, v3, v12}, Lcn/nubia/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/music/MediaPlaybackService;->access$3102(Lcn/nubia/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 947
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3100(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 948
    iget-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->a:Z

    if-eqz v1, :cond_8

    .line 949
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    invoke-static {}, Lcn/nubia/music/MediaPlaybackService;->access$3200()I

    move-result v6

    move v1, v0

    .line 958
    :goto_0
    if-ge v1, v6, :cond_4

    .line 959
    invoke-static {}, Lcn/nubia/music/MediaPlaybackService;->access$3300()[J

    move-result-object v2

    aget-wide v2, v2, v1

    .line 960
    cmp-long v7, v2, v10

    if-gez v7, :cond_1

    .line 958
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    :cond_1
    cmp-long v7, v2, v10

    if-nez v7, :cond_2

    .line 963
    const-string v2, "0;"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 965
    :cond_2
    :goto_2
    cmp-long v7, v2, v10

    if-eqz v7, :cond_3

    .line 966
    const-wide/16 v8, 0xf

    and-long/2addr v8, v2

    long-to-int v7, v8

    .line 967
    ushr-long/2addr v2, v12

    .line 968
    iget-object v8, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v8}, Lcn/nubia/music/MediaPlaybackService;->access$3400(Lcn/nubia/music/MediaPlaybackService;)[C

    move-result-object v8

    aget-char v7, v8, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 970
    :cond_3
    const-string v2, ";"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 973
    :cond_4
    const-string v1, "queue"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v1, "cardid"

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v2}, Lcn/nubia/music/MediaPlaybackService;->access$3500(Lcn/nubia/music/MediaPlaybackService;)I

    move-result v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 975
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3600(Lcn/nubia/music/MediaPlaybackService;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 977
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3700(Lcn/nubia/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 978
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    .line 979
    :goto_3
    if-ge v1, v2, :cond_7

    .line 980
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$3700(Lcn/nubia/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 981
    if-nez v0, :cond_5

    .line 982
    const-string v0, "0;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 984
    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 985
    and-int/lit8 v3, v0, 0xf

    .line 986
    ushr-int/lit8 v0, v0, 0x4

    .line 987
    iget-object v6, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v6}, Lcn/nubia/music/MediaPlaybackService;->access$3400(Lcn/nubia/music/MediaPlaybackService;)[C

    move-result-object v6

    aget-char v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 989
    :cond_6
    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 992
    :cond_7
    const-string v0, "history"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 995
    :cond_8
    const-string v0, "curpos"

    invoke-static {}, Lcn/nubia/music/MediaPlaybackService;->access$3800()I

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 996
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 997
    const-string v0, "seekpos"

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService$b;->i()J

    move-result-wide v2

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 999
    :cond_9
    const-string v0, "repeatmode"

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$500(Lcn/nubia/music/MediaPlaybackService;)I

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1000
    const-string v0, "shufflemode"

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3600(Lcn/nubia/music/MediaPlaybackService;)I

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1001
    const-string v0, "cursongname"

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$15;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1002
    invoke-static {v4}, Lcn/nubia/music/utils/SharedPrefersHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1003
    return-void
.end method
