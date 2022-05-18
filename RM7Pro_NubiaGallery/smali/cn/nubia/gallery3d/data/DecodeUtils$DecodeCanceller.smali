.class Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;
.super Ljava/lang/Object;
.source "DecodeUtils.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/DecodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeCanceller"
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    return-void
.end method
