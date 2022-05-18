.class public Lcom/nubia/reyun/sdk/AuditData;
.super Ljava/lang/Object;
.source "AuditData.java"


# instance fields
.field public mAccountId:Ljava/lang/String;

.field public mDay:J

.field public mEevent:Ljava/lang/String;

.field public mTimestamp:J

.field public map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
