.class public Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
.super Ljava/lang/Object;
.source "NotesData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/utils/NotesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NOTES_DATA"
.end annotation


# instance fields
.field public classify:I

.field public contentsData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;"
        }
    .end annotation
.end field

.field public createdDate:J

.field public id:I

.field public isImage:Z

.field public isRecord:Z

.field public isRemind:Z

.field public isTop:Z

.field public labelId:I

.field public mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field public modifiedDate:J

.field public remindTime:J

.field public resource:Ljava/lang/String;

.field public secondTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBuildTitleForChina(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 147
    if-eqz p2, :cond_6

    .line 148
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, v2

    .line 152
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const-string v1, ""

    .line 171
    :goto_0
    return-object v1

    .line 156
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    .local v0, "checkedFlag":C
    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const v1, 0x7f0a0056

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_1
    move-object v1, p2

    .line 169
    goto :goto_0

    .line 162
    :cond_3
    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const v1, 0x7f0a0057

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 164
    :cond_4
    const v1, 0x7f0a0107

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    const v1, 0x7f0a0059

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 166
    :cond_5
    const v1, 0x7f0a0108

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const v1, 0x7f0a005a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 171
    .end local v0    # "checkedFlag":C
    :cond_6
    const-string v1, ""

    goto :goto_0
.end method

.method private getBuildTitleForOver(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 177
    if-eqz p2, :cond_5

    .line 178
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, v2

    .line 182
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    const-string v1, ""

    .line 197
    :goto_0
    return-object v1

    .line 186
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "checkedFlag":C
    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    const v1, 0x7f0a0056

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_1
    move-object v1, p2

    .line 195
    goto :goto_0

    .line 190
    :cond_3
    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    const v1, 0x7f0a0057

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 192
    :cond_4
    const v1, 0x7f0a0107

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const v1, 0x7f0a0059

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 197
    .end local v0    # "checkedFlag":C
    :cond_5
    const-string v1, ""

    goto :goto_0
.end method

.method private getBuildTitleRemoveFlagForChina(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 228
    if-eqz p2, :cond_8

    .line 229
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, v2

    .line 232
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, ""

    .line 250
    :goto_0
    return-object v1

    .line 235
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 236
    .local v0, "checkedFlag":C
    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 237
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 239
    :cond_3
    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    const v1, 0x7f0a0056

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_1
    move-object v1, p2

    .line 248
    goto :goto_0

    .line 241
    :cond_5
    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    const v1, 0x7f0a0057

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 243
    :cond_6
    const v1, 0x7f0a0107

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 244
    const v1, 0x7f0a0059

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 245
    :cond_7
    const v1, 0x7f0a0108

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    const v1, 0x7f0a005a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 250
    .end local v0    # "checkedFlag":C
    :cond_8
    const-string v1, ""

    goto :goto_0
.end method

.method private getBuildTitleRemoveFlagForOver(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 202
    if-eqz p2, :cond_7

    .line 203
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "@#&%!%&#@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, v2

    .line 206
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const-string v1, ""

    .line 222
    :goto_0
    return-object v1

    .line 209
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "checkedFlag":C
    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 211
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 213
    :cond_3
    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    const v1, 0x7f0a0056

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_1
    move-object v1, p2

    .line 220
    goto :goto_0

    .line 215
    :cond_5
    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    const v1, 0x7f0a0057

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 217
    :cond_6
    const v1, 0x7f0a0107

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    const v1, 0x7f0a0059

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 222
    .end local v0    # "checkedFlag":C
    :cond_7
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getBuildTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getBuildTitleForChina(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildTitleRemoveFlag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getBuildTitleRemoveFlagForChina(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "realTitle":Ljava/lang/String;
    const-string v1, "@#&%-%&#@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "@#&%-%&#@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 120
    :cond_0
    const-string v1, "NotePadNotesData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0, p2}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getRealTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "titleTemp":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getBuildTitleRemoveFlag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTES_DATA [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondTitle ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentsData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", classify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRemind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remindTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mImageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
