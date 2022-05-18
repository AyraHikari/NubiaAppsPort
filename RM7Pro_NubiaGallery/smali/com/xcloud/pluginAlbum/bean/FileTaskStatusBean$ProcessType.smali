.class public final enum Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;
.super Ljava/lang/Enum;
.source "FileTaskStatusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

.field public static final enum PAUSE:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

.field public static final enum REMOVE:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

.field public static final enum RESTART:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

.field public static final enum RESUME:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 107
    new-instance v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->PAUSE:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    .line 111
    new-instance v1, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    const-string v3, "RESUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->RESUME:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    .line 115
    new-instance v3, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    const-string v5, "RESTART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->RESTART:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    .line 119
    new-instance v5, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    const-string v7, "REMOVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->REMOVE:Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 102
    sput-object v7, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->$VALUES:[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;
    .locals 1

    .line 102
    const-class v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    return-object p0
.end method

.method public static values()[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;
    .locals 1

    .line 102
    sget-object v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->$VALUES:[Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    invoke-virtual {v0}, [Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;

    return-object v0
.end method
