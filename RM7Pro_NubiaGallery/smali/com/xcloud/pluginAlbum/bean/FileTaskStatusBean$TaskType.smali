.class public final enum Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;
.super Ljava/lang/Enum;
.source "FileTaskStatusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

.field public static final enum ALL:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

.field public static final enum DOWNLOAD:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

.field public static final enum UPLOAD:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 127
    new-instance v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;->ALL:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    .line 131
    new-instance v1, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    const-string v3, "DOWNLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;->DOWNLOAD:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    .line 135
    new-instance v3, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    const-string v5, "UPLOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;->UPLOAD:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 122
    sput-object v5, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;->$VALUES:[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;
    .locals 1

    .line 122
    const-class v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    return-object p0
.end method

.method public static values()[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;
    .locals 1

    .line 122
    sget-object v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;->$VALUES:[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    invoke-virtual {v0}, [Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;

    return-object v0
.end method
