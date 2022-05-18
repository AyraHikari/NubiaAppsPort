.class Lcn/nubia/gallery3d/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/util/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/util/ProfileData$Node;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public parent:Lcn/nubia/gallery3d/util/ProfileData$Node;

.field public sampleCount:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcn/nubia/gallery3d/util/ProfileData$Node;->parent:Lcn/nubia/gallery3d/util/ProfileData$Node;

    .line 43
    iput p2, p0, Lcn/nubia/gallery3d/util/ProfileData$Node;->id:I

    return-void
.end method
