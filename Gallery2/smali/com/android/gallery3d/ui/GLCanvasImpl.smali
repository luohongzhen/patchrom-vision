.class public Lcom/android/gallery3d/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLCanvasImpl$1;,
        Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;,
        Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F = null

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/android/gallery3d/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 53
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    .line 57
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 59
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureColor:[F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 72
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 73
    new-instance v0, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 74
    new-instance v0, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 77
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    .line 78
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 91
    new-instance v0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    .line 92
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->initialize()V

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLCanvasImpl;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 137
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .parameter "texture"

    .prologue
    .line 436
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 440
    :goto_0
    return v1

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result v0

    .line 438
    .local v0, target:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 439
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 440
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5
    .parameter "gl11ep"

    .prologue
    .line 815
    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 816
    .local v1, status:I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 817
    const-string v0, ""

    .line 818
    .local v0, msg:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 841
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 820
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    .line 821
    goto :goto_0

    .line 823
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 824
    goto :goto_0

    .line 826
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    .line 827
    goto :goto_0

    .line 829
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    .line 830
    goto :goto_0

    .line 832
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    .line 833
    goto :goto_0

    .line 835
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    .line 836
    goto :goto_0

    .line 838
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 843
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void

    .line 818
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 9
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 405
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v3

    .line 406
    .local v3, width:I
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    .line 407
    .local v0, height:I
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 408
    .local v2, texWidth:I
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 410
    .local v1, texHeight:I
    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->left:F

    .line 411
    iget v6, p1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 412
    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 413
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 416
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 417
    .local v4, xBound:F
    iget v6, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 418
    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->right:F

    .line 420
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 422
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 423
    .local v5, yBound:F
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 424
    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 426
    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 428
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 9
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v7, 0x3f00

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 339
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    .line 353
    :cond_0
    :goto_1
    return-void

    .line 335
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v6

    .line 344
    .local v6, points:[F
    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    .line 345
    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    .line 346
    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 347
    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 348
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 350
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIIIF)V
    .locals 12
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 454
    const v1, 0x3c23d70a

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 455
    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIIIF)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    .line 458
    move/from16 v0, p4

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 465
    iget-object v10, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 466
    .local v10, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float v9, p8, v1

    .line 479
    .local v9, combo:F
    mul-float v1, p8, p3

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v9

    div-float v11, v1, v2

    .line 482
    .local v11, scale:F
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 487
    ushr-int/lit8 v1, p2, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, v11

    const v2, 0x477e0100

    div-float v8, v1, v2

    .line 488
    .local v8, colorScale:F
    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v8

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v8

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-direct {p0, v1, v2, v3, v9}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 491
    const/16 v1, 0x2300

    const/16 v2, 0x2201

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v4, 0x0

    invoke-interface {v10, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 493
    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 494
    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 495
    const/16 v1, 0x2300

    const v2, 0x8581

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 496
    const/16 v1, 0x2300

    const v2, 0x8591

    const/high16 v3, 0x4440

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 497
    const/16 v1, 0x2300

    const v2, 0x8589

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 498
    const/16 v1, 0x2300

    const v2, 0x8599

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 501
    const/16 v1, 0x2300

    const v2, 0x8582

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 502
    const/16 v1, 0x2300

    const v2, 0x8592

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 505
    const/16 v1, 0x2300

    const v2, 0x858a

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 506
    const/16 v1, 0x2300

    const v2, 0x859a

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 508
    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawBoundTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 509
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto/16 :goto_0

    .line 462
    .end local v8           #colorScale:F
    .end local v9           #combo:F
    .end local v10           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v11           #scale:F
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIIIF)V
    .locals 2
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 362
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 368
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawBoundTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 724
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 725
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/4 v9, 0x1

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 144
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v2, v4, 0x8

    .line 145
    .local v2, size:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 146
    .local v3, xyBuffer:Ljava/nio/FloatBuffer;
    sget-object v4, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v5, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    new-array v1, v9, [I

    .line 149
    .local v1, name:[I
    invoke-static {v9, v1, v6}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 150
    aget v4, v1, v6

    iput v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBoxCoords:I

    .line 152
    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 153
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {v0, v10, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 157
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 158
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 161
    const v4, 0x84c1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 162
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 163
    const v4, 0x84c0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 164
    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 167
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    .line 519
    const v0, 0x3727c5ac

    .line 520
    .local v0, eps:F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .parameter "m"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 307
    .local v0, r:[F
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v3, v7, v8

    .line 308
    .local v3, x3:F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v5, v7, v8

    .line 309
    .local v5, y3:F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v1, v7, v8

    .line 310
    .local v1, w3:F
    const/4 v7, 0x0

    div-float v8, v3, v1

    aput v8, v0, v7

    .line 311
    const/4 v7, 0x1

    div-float v8, v5, v1

    aput v8, v0, v7

    .line 314
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v4, v7, v8

    .line 315
    .local v4, x4:F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v6, v7, v8

    .line 316
    .local v6, y4:F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v2, v7, v8

    .line 317
    .local v2, w4:F
    const/4 v7, 0x2

    div-float v8, v4, v2

    aput v8, v0, v7

    .line 318
    const/4 v7, 0x3

    div-float v8, v6, v2

    aput v8, v0, v7

    .line 320
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    .locals 2

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    if-eqz v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 730
    .local v0, result:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    iget-object v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 733
    .end local v0           #result:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;-><init>(Lcom/android/gallery3d/ui/GLCanvasImpl$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 767
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 763
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    return-void
.end method

.method private setRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 6
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 773
    .local v0, gl11ep:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 774
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-static {v3, v2, v5}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 775
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 778
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 779
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 780
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 783
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 784
    if-nez p1, :cond_2

    .line 785
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 798
    :goto_0
    return-void

    .line 787
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 789
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 791
    :cond_3
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 796
    invoke-static {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureColor:[F

    .line 445
    .local v0, color:[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 446
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 447
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 448
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 449
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 644
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 645
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 646
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 647
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 648
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 649
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 651
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 652
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 638
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 639
    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2
    .parameter "mTextureTransform"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 656
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 657
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 658
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 254
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 256
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 258
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 259
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 261
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 262
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 263
    return-void
.end method


# virtual methods
.method public beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->save()V

    .line 810
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 812
    return-void
.end method

.method public clearBuffer()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 635
    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2
    .parameter "bufferId"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 6

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 679
    .local v0, ids:Lcom/android/gallery3d/util/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 681
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 685
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 687
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 689
    :cond_1
    monitor-exit v2

    .line 690
    return-void

    .line 689
    .end local v0           #ids:Lcom/android/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 189
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 192
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 194
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 197
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 199
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 200
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 201
    return-void
.end method

.method public drawMesh(Lcom/android/gallery3d/ui/BasicTexture;IIIIII)V
    .locals 8
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "xyBuffer"
    .parameter "uvBuffer"
    .parameter "indexBuffer"
    .parameter "indexCount"

    .prologue
    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 267
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 268
    .local v0, alpha:F
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 276
    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 278
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 279
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 281
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 283
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 284
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 286
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 287
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 289
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 290
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 294
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 295
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 297
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 298
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 270
    goto :goto_1
.end method

.method public drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V
    .locals 9
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 432
    iget v8, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIIIF)V

    .line 433
    return-void
.end method

.method public drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 172
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 177
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 179
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 180
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 183
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 184
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 357
    iget v6, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIIIF)V

    .line 358
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 377
    iget-object p2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 378
    iget-object p3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 380
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 382
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0, p2, p3, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 384
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 386
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_0

    .line 380
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V
    .locals 4
    .parameter "texture"
    .parameter "mTextureTransform"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 393
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    :goto_1
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords([F)V

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 396
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 750
    const-string v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, line:Ljava/lang/String;
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    .line 755
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 756
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    .line 757
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    .line 758
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 759
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-void
.end method

.method public endRenderTarget()V
    .locals 3

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    .line 803
    .local v0, texture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 804
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restore()V

    .line 805
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 207
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 209
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 212
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 214
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 215
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    .line 216
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    return v0
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 132
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 133
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .parameter "matrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 247
    .local v0, temp:[F
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 248
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 718
    .local v0, config:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->restore(Lcom/android/gallery3d/ui/GLCanvasImpl;)V

    .line 719
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->freeRestoreConfig(Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;)V

    .line 720
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 238
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    .local v0, temp:[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 240
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 241
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 242
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->save(I)V

    .line 694
    return-void
.end method

.method public save(I)V
    .locals 5
    .parameter "saveFlags"

    .prologue
    const/4 v4, 0x0

    .line 697
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->obtainRestoreConfig()Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    move-result-object v0

    .line 699
    .local v0, config:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 700
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    .line 706
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    return-void

    .line 702
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_0

    .line 709
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "sz"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 235
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 123
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 124
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 96
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_0

    .line 99
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenWidth:I

    .line 100
    iput p2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenHeight:I

    .line 102
    :cond_0
    iput v6, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 105
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 106
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 107
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 108
    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 110
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 111
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 114
    .local v1, matrix:[F
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 116
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_1

    .line 117
    int-to-float v2, p2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 118
    const/high16 v2, -0x4080

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 120
    :cond_1
    return-void

    .end local v0           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v1           #matrix:[F
    :cond_2
    move v2, v3

    .line 96
    goto :goto_0
.end method

.method public translate(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 227
    .local v0, m:[F
    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 228
    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 229
    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 230
    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 231
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 220
    return-void
.end method

.method public unloadTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 664
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 666
    :goto_0
    return v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    iget v2, p1, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 666
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
