.class public Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;
.super Ljava/lang/Object;
.source "VideoMake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoMake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapDegree"
.end annotation


# instance fields
.field public mDegree:I

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;->mPath:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;->mDegree:I

    return-void
.end method
