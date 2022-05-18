.class public final enum Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;
.super Ljava/lang/Enum;
.source "NuCmsAdEventReportBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/bean/NuCmsAdEventReportBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

.field public static final enum AD_CLICK:Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

.field public static final enum AD_SHOW:Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    const-string v1, "AD_SHOW"

    const-string v2, "s_ad_show_pv"

    invoke-direct {v0, v1, v3, v2}, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->AD_SHOW:Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    new-instance v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    const-string v1, "AD_CLICK"

    const-string v2, "s_ad_click_cnt"

    invoke-direct {v0, v1, v4, v2}, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->AD_CLICK:Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->AD_SHOW:Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->AD_CLICK:Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->$VALUES:[Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->value:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->$VALUES:[Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    invoke-virtual {v0}, [Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsAdEventReportBean$Event;->value:Ljava/lang/String;

    return-object v0
.end method
