.class Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;
.super Ljava/lang/Object;
.source "ItemLabelMaker.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/ItemLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDays:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/ItemLabelMaker;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->mDays:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$000(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 82
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)Landroid/text/TextPaint;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->mDays:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 88
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v3, p1

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)I

    move-result p1

    iget v4, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->date_bottomMargin:I

    sub-int/2addr p1, v4

    iget v0, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->date_textFontSize:I

    sub-int v4, p1, v0

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->mDays:Ljava/lang/String;

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    .line 89
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)I

    move-result v6

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->this$0:Lcn/nubia/gallery3d/ui/ItemLabelMaker;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    .line 88
    invoke-static/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
