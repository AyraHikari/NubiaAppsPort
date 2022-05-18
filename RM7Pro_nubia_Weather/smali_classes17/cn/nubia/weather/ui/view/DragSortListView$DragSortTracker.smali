.class Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2940
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    .line 2935
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2936
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2938
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2941
    const/4 v0, 0x0

    .line 2942
    .local v0, "root":Ljava/io/File;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2943
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/nubia/weather/app/WeatherApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2947
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2949
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2951
    :try_start_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2959
    :cond_0
    :goto_1
    return-void

    .line 2945
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 2953
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public appendState()V
    .locals 7

    .prologue
    .line 2968
    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_1

    .line 3019
    :cond_0
    :goto_0
    return-void

    .line 2972
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildCount()I

    move-result v0

    .line 2974
    .local v0, "children":I
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2975
    .local v1, "first":I
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2977
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2979
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2983
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2985
    :cond_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 2988
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2990
    :cond_4
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2992
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 2994
    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2800(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2900(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpBlankHeight>\n"

    .line 2995
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 2998
    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2800(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2900(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpBlankHeight>\n"

    .line 2999
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$900(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1100(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcHeight>\n"

    .line 3002
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$3000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 3008
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v6, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$3100(Lcn/nubia/weather/ui/view/DragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3010
    :cond_5
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 3015
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    .line 3016
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->flush()V

    .line 3017
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 3022
    iget-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v2, :cond_0

    .line 3044
    :goto_0
    return-void

    .line 3028
    :cond_0
    const/4 v0, 0x1

    .line 3029
    .local v0, "append":Z
    :try_start_0
    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v2, :cond_1

    .line 3030
    const/4 v0, 0x0

    .line 3032
    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3034
    .local v1, "writer":Ljava/io/FileWriter;
    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3035
    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3037
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 3038
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 3040
    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3041
    .end local v1    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 2962
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2965
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 3047
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3048
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->flush()V

    .line 3050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    .line 3052
    :cond_0
    return-void
.end method
