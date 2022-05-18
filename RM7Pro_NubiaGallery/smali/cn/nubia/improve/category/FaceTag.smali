.class public Lcn/nubia/improve/category/FaceTag;
.super Ljava/lang/Object;
.source "FaceTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/category/FaceTag$Param;
    }
.end annotation


# static fields
.field public static final NO_FACE_ID:I = -0x1


# instance fields
.field private mFaceCount:I

.field private mFaceInfos:[Lcn/nubia/improve/category/FaceInfo;

.field private mParam:Lcn/nubia/improve/category/FaceTag$Param;


# direct methods
.method public constructor <init>(I[Lcn/nubia/improve/category/FaceInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/nubia/improve/category/FaceTag;->mFaceCount:I

    .line 13
    iput-object p2, p0, Lcn/nubia/improve/category/FaceTag;->mFaceInfos:[Lcn/nubia/improve/category/FaceInfo;

    return-void
.end method


# virtual methods
.method public getFaceCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/nubia/improve/category/FaceTag;->mFaceCount:I

    return v0
.end method

.method public getFaceInfos()[Lcn/nubia/improve/category/FaceInfo;
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/improve/category/FaceTag;->mFaceInfos:[Lcn/nubia/improve/category/FaceInfo;

    return-object v0
.end method

.method public getParam()Lcn/nubia/improve/category/FaceTag$Param;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/improve/category/FaceTag;->mParam:Lcn/nubia/improve/category/FaceTag$Param;

    return-object v0
.end method

.method public setParam(Lcn/nubia/improve/category/FaceTag$Param;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/improve/category/FaceTag;->mParam:Lcn/nubia/improve/category/FaceTag$Param;

    return-void
.end method
