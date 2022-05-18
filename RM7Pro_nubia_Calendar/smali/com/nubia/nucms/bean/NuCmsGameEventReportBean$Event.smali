.class public final enum Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;
.super Ljava/lang/Enum;
.source "NuCmsGameEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/bean/NuCmsGameEventReportBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

.field public static final enum ARTICLE_CLICK:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

.field public static final enum ARTICLE_READ_TIME:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

.field public static final enum ARTICLE_SHOW:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

.field public static final enum VIDEO_PLAY_CNT:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

.field public static final enum VIDEO_PLAY_TIME:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    const-string v1, "ARTICLE_CLICK"

    const-string v2, "s_game_article_click"

    invoke-direct {v0, v1, v3, v2}, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->ARTICLE_CLICK:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    new-instance v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    const-string v1, "ARTICLE_READ_TIME"

    const-string v2, "s_game_article_read"

    invoke-direct {v0, v1, v4, v2}, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->ARTICLE_READ_TIME:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    .line 13
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    const-string v1, "VIDEO_PLAY_CNT"

    const-string v2, "s_game_video_play_cnt"

    invoke-direct {v0, v1, v5, v2}, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->VIDEO_PLAY_CNT:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    new-instance v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    const-string v1, "ARTICLE_SHOW"

    const-string v2, "s_game_article_show"

    invoke-direct {v0, v1, v6, v2}, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->ARTICLE_SHOW:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    new-instance v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    const-string v1, "VIDEO_PLAY_TIME"

    const-string v2, "s_game_video_play_time"

    invoke-direct {v0, v1, v7, v2}, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->VIDEO_PLAY_TIME:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->ARTICLE_CLICK:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->ARTICLE_READ_TIME:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->VIDEO_PLAY_CNT:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->ARTICLE_SHOW:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->VIDEO_PLAY_TIME:Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->$VALUES:[Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->$VALUES:[Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    invoke-virtual {v0}, [Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsGameEventReportBean$Event;->value:Ljava/lang/String;

    return-object v0
.end method
