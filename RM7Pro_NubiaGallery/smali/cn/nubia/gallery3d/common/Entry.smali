.class public abstract Lcn/nubia/gallery3d/common/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/Entry$Column;,
        Lcn/nubia/gallery3d/common/Entry$Table;,
        Lcn/nubia/gallery3d/common/Entry$Columns;
    }
.end annotation


# static fields
.field public static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public id:J
    .annotation runtime Lcn/nubia/gallery3d/common/Entry$Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_id"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcn/nubia/gallery3d/common/Entry;->id:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcn/nubia/gallery3d/common/Entry;->id:J

    return-void
.end method
