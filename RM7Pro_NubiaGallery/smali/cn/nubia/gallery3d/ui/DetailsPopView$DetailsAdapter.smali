.class Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsPopView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;
.implements Lcn/nubia/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/DetailsPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final NUBIA_MAGIC_MARS:Ljava/lang/String; = "NX619J"

.field private static final NUBIA_RED_MAGIC:Ljava/lang/String; = "nubia red magic"

.field private static final NUBIA_RED_MAGIC3:Ljava/lang/String; = "NX629J"

.field private static final NUBIA_RED_MAGIC3S:Ljava/lang/String; = "NX629J_V1S"

.field private static final NUBIA_RED_MAGIC_5G:Ljava/lang/String; = "Red Magic 5G"

.field private static final NUBIA_RED_MAGIC_5S:Ljava/lang/String; = "Red Magic 5S"

.field private static final NUBIA_RED_MAGIC_6:Ljava/lang/String; = "REDMAGIC 6"

.field private static final NUBIA_RED_MAGIC_6PRO:Ljava/lang/String; = "REDMAGIC 6Pro"

.field private static final NUBIA_RED_MAGIC_6R:Ljava/lang/String; = "REDMAGIC 6R"

.field private static final NUBIA_RED_MAGIC_6S:Ljava/lang/String; = "REDMAGIC 6S Pro"

.field private static final PROJ_NX591J:Ljava/lang/String; = "nubia Z17lite"


# instance fields
.field private final mEntityItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightIndex:I

.field private mLocationIndex:I

.field private mWidthIndex:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/DetailsPopView;Lcn/nubia/gallery3d/data/MediaDetails;)V
    .locals 2

    .line 339
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 336
    iput v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mWidthIndex:I

    .line 337
    iput v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mHeightIndex:I

    .line 340
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    .line 342
    iput v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mLocationIndex:I

    .line 343
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->setDetails(Landroid/content/Context;Lcn/nubia/gallery3d/data/MediaDetails;)V

    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcn/nubia/gallery3d/data/MediaDetails;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/gallery3d/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v7, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v9, v10, :cond_17

    const/4 v10, 0x5

    const v12, 0x7f100258

    const-string v13, "0"

    if-eq v9, v10, :cond_16

    const/4 v10, 0x6

    if-eq v9, v10, :cond_15

    const/16 v10, 0xa

    if-eq v9, v10, :cond_14

    const/16 v10, 0x68

    if-eq v9, v10, :cond_12

    const/16 v10, 0x6b

    if-eq v9, v10, :cond_f

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_e

    const/16 v10, 0x65

    if-eq v9, v10, :cond_4

    const/16 v10, 0x66

    if-eq v9, v10, :cond_2

    .line 449
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 369
    :cond_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/gallery3d/data/MediaDetails$FlashState;

    .line 373
    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f1000c7

    .line 374
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_3
    const v9, 0x7f1000c6

    .line 376
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 420
    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 421
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "REDMAGIC 6Pro"

    .line 422
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 423
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100186

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_5
    const-string v10, "REDMAGIC 6R"

    .line 424
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 425
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100187

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_6
    const-string v10, "REDMAGIC 6S Pro"

    .line 426
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v9, "persist.sys.pcb_version_ext"

    .line 428
    invoke-static {v9, v4}, Lcn/nubia/gallery3d/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "persist.sys.pcb_version_ext:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "DialogDetailsView"

    invoke-static {v12, v10}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "NX669S_V1C"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 431
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100189

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 433
    :cond_7
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100188

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_8
    const-string v10, "REDMAGIC 6"

    .line 435
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 436
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100185

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_9
    const-string v10, "NX629J_V1S"

    .line 437
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 438
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100194

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_a
    const-string v10, "NX629J"

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 440
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100193

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_b
    const-string v10, "Red Magic 5S"

    .line 441
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 442
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100184

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_c
    const-string v10, "Red Magic 5G"

    .line 443
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 444
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100183

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_d
    move-object v9, v4

    goto/16 :goto_2

    .line 413
    :cond_e
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 414
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 415
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v9}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7}, Lcn/nubia/gallery3d/util/GalleryUtils;->getShowFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 381
    :cond_f
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 382
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v9, v12

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    if-gez v14, :cond_10

    new-array v14, v5, [Ljava/lang/Object;

    div-double/2addr v12, v9

    add-double/2addr v12, v15

    double-to-int v9, v12

    .line 384
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v11

    const-string v9, "1/%d"

    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_10
    double-to-int v14, v9

    int-to-double v11, v14

    sub-double/2addr v9, v11

    .line 388
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide v12, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v12, v9, v12

    if-lez v12, :cond_11

    .line 390
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v9, v13, v9

    add-double/2addr v9, v15

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v12, v10

    const-string v9, " 1/%d"

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_11
    move-object v9, v11

    goto/16 :goto_2

    .line 364
    :cond_12
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const v9, 0x7f100145

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_13
    const v9, 0x7f100041

    .line 365
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 360
    :cond_14
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Lcn/nubia/gallery3d/util/GalleryUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 404
    :cond_15
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mHeightIndex:I

    .line 405
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 406
    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 407
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 396
    :cond_16
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mWidthIndex:I

    .line 397
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 398
    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 399
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    .line 354
    :cond_17
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    check-cast v9, [D

    .line 355
    iget-object v10, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mLocationIndex:I

    .line 356
    iget-object v10, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v10}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v10

    invoke-static {v10, v9, v0}, Lcn/nubia/gallery3d/ui/DetailsHelper;->resolveAddress(Lcn/nubia/gallery3d/app/GalleryActivity;[DLcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v9

    .line 461
    :cond_18
    :goto_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 462
    new-instance v10, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;

    iget-object v11, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-direct {v10, v11}, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    .line 463
    invoke-static {v1, v8}, Lcn/nubia/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->title:Ljava/lang/String;

    .line 465
    invoke-virtual {v2, v8}, Lcn/nubia/gallery3d/data/MediaDetails;->hasUnit(I)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_19

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    .line 467
    invoke-virtual {v2, v8}, Lcn/nubia/gallery3d/data/MediaDetails;->getUnit(I)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v5

    const-string v14, "%s %s"

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 468
    invoke-static {v1, v8}, Lcn/nubia/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v13

    aput-object v9, v14, v5

    .line 469
    invoke-virtual {v2, v8}, Lcn/nubia/gallery3d/data/MediaDetails;->getUnit(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v12

    const-string v8, "%s : %s %s"

    .line 468
    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_19
    const/4 v13, 0x0

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v9, v11, v13

    const-string v14, " %s"

    .line 471
    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v12, [Ljava/lang/Object;

    .line 472
    invoke-static {v1, v8}, Lcn/nubia/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v13

    aput-object v9, v12, v5

    const-string v8, "%s : %s"

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 476
    :goto_3
    iput-object v11, v10, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->content:Ljava/lang/String;

    .line 477
    iget-object v8, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_0

    if-eqz v7, :cond_0

    .line 479
    invoke-static {v7, v0}, Lcn/nubia/gallery3d/ui/DetailsHelper;->resolveResolution(Ljava/lang/String;Lcn/nubia/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;)V

    goto/16 :goto_0

    :cond_1a
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 495
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 499
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$600(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 514
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0031

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 516
    new-instance p3, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;)V

    const v0, 0x7f090086

    .line 517
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f090085

    .line 519
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 520
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;

    .line 524
    :goto_0
    iget-object v0, p3, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object p3, p3, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mLocationIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;

    .line 531
    iput-object p1, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->content:Ljava/lang/String;

    .line 532
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mLocationIndex:I

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onResolutionAvailable(II)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mWidthIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->content:Ljava/lang/String;

    .line 541
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mEntityItems:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->mHeightIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;->content:Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
