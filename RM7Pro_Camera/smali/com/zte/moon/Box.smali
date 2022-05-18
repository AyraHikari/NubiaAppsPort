.class public Lcom/zte/moon/Box;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:[Ljava/lang/String;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 80

    const-string v0, "moon"

    const-string v1, "bicycle"

    const-string v2, "car"

    const-string v3, "motorcycle"

    const-string v4, "airplane"

    const-string v5, "bus"

    const-string v6, "train"

    const-string v7, "truck"

    const-string v8, "boat"

    const-string v9, "traffic light"

    const-string v10, "fire hydrant"

    const-string v11, "stop sign"

    const-string v12, "parking meter"

    const-string v13, "bench"

    const-string v14, "bird"

    const-string v15, "cat"

    const-string v16, "dog"

    const-string v17, "horse"

    const-string v18, "sheep"

    const-string v19, "cow"

    const-string v20, "elephant"

    const-string v21, "bear"

    const-string v22, "zebra"

    const-string v23, "giraffe"

    const-string v24, "backpack"

    const-string v25, "umbrella"

    const-string v26, "handbag"

    const-string v27, "tie"

    const-string v28, "suitcase"

    const-string v29, "frisbee"

    const-string v30, "skis"

    const-string v31, "snowboard"

    const-string v32, "sports ball"

    const-string v33, "kite"

    const-string v34, "baseball bat"

    const-string v35, "baseball glove"

    const-string v36, "skateboard"

    const-string v37, "surfboard"

    const-string v38, "tennis racket"

    const-string v39, "bottle"

    const-string v40, "wine glass"

    const-string v41, "cup"

    const-string v42, "fork"

    const-string v43, "knife"

    const-string v44, "spoon"

    const-string v45, "bowl"

    const-string v46, "banana"

    const-string v47, "apple"

    const-string v48, "sandwich"

    const-string v49, "orange"

    const-string v50, "broccoli"

    const-string v51, "carrot"

    const-string v52, "hot dog"

    const-string v53, "pizza"

    const-string v54, "donut"

    const-string v55, "cake"

    const-string v56, "chair"

    const-string v57, "couch"

    const-string v58, "potted plant"

    const-string v59, "bed"

    const-string v60, "dining table"

    const-string v61, "toilet"

    const-string v62, "tv"

    const-string v63, "laptop"

    const-string v64, "mouse"

    const-string v65, "remote"

    const-string v66, "keyboard"

    const-string v67, "cell phone"

    const-string v68, "microwave"

    const-string v69, "oven"

    const-string v70, "toaster"

    const-string v71, "sink"

    const-string v72, "refrigerator"

    const-string v73, "book"

    const-string v74, "clock"

    const-string v75, "vase"

    const-string v76, "scissors"

    const-string v77, "teddy bear"

    const-string v78, "hair drier"

    const-string v79, "toothbrush"

    .line 13
    filled-new-array/range {v0 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/moon/Box;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/moon/Box;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/moon/Box;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/moon/Box;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/moon/Box;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/moon/Box;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
