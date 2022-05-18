.class public Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/GlobalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKConfig"
.end annotation


# static fields
.field public static volatile eventsSendFlag:Z = true

.field public static volatile exceptionSendFlag:Z = true

.field public static volatile launchSendFlag:Z = true

.field public static volatile pvSendFlag:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
