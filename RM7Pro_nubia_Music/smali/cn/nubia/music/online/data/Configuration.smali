.class public Lcn/nubia/music/online/data/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/online/data/Configuration$SDKType;
    }
.end annotation


# static fields
.field public static final CURRENT_SDK:Lcn/nubia/music/online/data/Configuration$SDKType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcn/nubia/music/online/data/Configuration$SDKType;->Baidu:Lcn/nubia/music/online/data/Configuration$SDKType;

    sput-object v0, Lcn/nubia/music/online/data/Configuration;->CURRENT_SDK:Lcn/nubia/music/online/data/Configuration$SDKType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
